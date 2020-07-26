<template>
    <div v-cloak>
        <div v-if="active">
            <!-- <button @click="deleteAllFromCart()" class="btn text-white w-100 btn-danger btn-sm mb-3 reset_button"><i
                class="fa fa-fw fa-refresh my-1 fa-lg" style="font-size: 22px !important"></i>
            </button> -->
            <div class="row d-none">
                <div class="col-md-6">
                    <label for="name"><strong>{{ customer_name_field }} </strong></label>
                    <input type="text" class="form-control" title="name" v-model="customer_name" required>
                </div>
                <div class="col-md-6">
                    <label for="mobile"><strong> {{ customer_mobile_field }} </strong></label>
                    <input type="tex" class="form-control" title="mobile" v-model="mobile" required>
                </div>
            </div>
            <!-- <br> -->
            <div>
                <table class="table table-bordered table-hover display">
                    <thead>
                        <th>{{ sl }}</th>
                        <th>{{ name }}</th>
                        <th width="15%">Price </th>
                        <th width="30%">{{ quantity }} </th>
                        <th width="10%">{{ total }}</th>
                        <th class="action">{{ action }}</th>
                    </thead>
                    <tbody>

                        <tr v-for="(bill, index, sl) in carts">
                            <td width="8%">{{ (sl+1) }}</td>
                            <td width="54%">{{ bill.name }}</td>
                            <td width="15%"><input type="text" name="price" @keyup="updateProduct(bill.id, bill.price, index)" v-model="bill.price" style="width: 44px; padding: 8px;"></td>
                            <td class="btn-plus-minus" width="30%">
                                <input type="number" v-model="bill.qty" @keyup="updateQty(bill.qty, index, sl)" min=0 oninput="validity.valid||(value='')" class="form-control mr-1 ml-2" step="any" style="width: 60%">
                                <button class="btn btn-default btn-sm btn-small btn-small-success" @click="plusQty(bill.qty, index, sl)" style="border-bottom-right-radius: 0;border-bottom-left-radius: 0;"><i class="fa fa-plus"></i></button>
                                <button class="btn btn-default btn-sm btn-small btn-small-danger" @click="minusQty(bill.qty, index, sl)" style="border-top-right-radius: 0;border-top-left-radius: 0;"><i class="fa fa-minus"></i></button>
                            </td>
                            <td>{{ (parseFloat(bill.qty)*parseFloat(bill.price)).toFixed(2) }}TK</td>
                            <td width="8%" class="text-center">
                                <button @click="deleteFromCart(bill.rowId, sl)" class="btn text-white  btn-danger btn-sm"><i
                                    class="fa fa-fw fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ total }} </th>
                            <th>{{ getTotalQty }}</th>
                            <th colspan="3">{{ parseFloat(getGrandTotal).toFixed(2) }}TK</th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ is_order_field }} </th>
                            <th colspan="3">
                                <input type="checkbox" class="form-control" v-model="is_order" oninput="validity.valid||(value='')" style="float: left;width: 21px;">
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ discount_field }} (%) </th>
                            <th colspan="3">
                                <input type="number" class="form-control" v-model="discount_2" min=0 max=100 step=".1" oninput="validity.valid||(value='')">
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ discount_field }} (TK)</th>
                            <th colspan="3">
                                <input type="number" class="form-control" v-model="discount" min=0 oninput="validity.valid||(value='')">
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ vat_field }} (%) </th>
                            <th colspan="3">
                                <input type="number" class="form-control" v-model="vat" min=0 max=100 step=".1" oninput="validity.valid||(value='')">
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ payable_field }} </th>
                            <th colspan="3">
                                {{ parseFloat(payable_amount).toFixed(2) }}
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ paid_field }} </th>
                            <th colspan="3">
                                <input type="number" class="form-control" v-model="given_money" min=1 oninput="validity.valid||(value='')" required>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3" class="text-right">{{ return_field }} </th>
                            <th colspan="3">
                                {{ parseFloat(return_money).toFixed(2) }}
                            </th>
                        </tr>
                    </tbody>
                </table>
                <button @click="addToSaleProduct" class="float-right btn btn-primary"><i
                    class="fa fa-check"></i> {{ submit }}
                </button>
            </div>
        </div>
        <div v-else>
            <h4 class="text-center py-5 alert-warning br-4">{{ no_data }}</h4>
        </div>
    </div>
</template>

<script>
export default {
    name: "Bill",
    props: [
    'submit', 'sl', 'photo', 'name', 'quantity', 'price', 'is_order_field', 'discount_field', 'vat_field', 'discount_2_field', 'total', 'action', 'url', 'customer_name_field',
    'paid_field', 'customer_mobile_field','no_data', 'after_discount', 'after_vat', 'return_field', 'payable_field'
    ],
    data() {
        return {
            active: false,
            totalQty: 0.00,
            customer_name: '',
            mobile: '',
            given_money: '',
            return_money: 0,
            is_order: false,
            discount: 0,
            discount_2: 0,
            vat: 0,
            carts: [],
            payable_amount: 0
        }
    },
    computed: {
        getTotalQty: function () {
            return this.$store.getters.getTotalQty;
        },
        getGrandTotal: function () {
            this.getPayableAmount();
            return this.getGrandTotalFromMethod();
        }
    },
    mounted() {
        //this.deleteAllFromCart();
        this.getPayableAmount();
    },
    methods: {
        plusQty: function (qty, index, sl){
            var qty = qty + 1;
            var new_qty = qty;
            this.carts[index].qty = new_qty;
            this.updateQty(new_qty, index, sl);
        },
        minusQty: function (qty, index, sl){
            if(qty > 1){
                var qty = qty - 1;
                var new_qty = qty;
                this.carts[index].qty = new_qty;
                this.updateQty(new_qty, index, sl);
            }
        },
        updateQty: function (qty, index, sl) {
            if (qty > 0) {
                axios.post(this.url + '/admin/sale/update_cart_qty', {
                    rowId: index,
                    qty: qty
                })
                .then((response) => {
                    this.$store.commit('setCartiem', {
                                cartItem: response.data.cart // payload
                            });

                    this.$store.commit('setTotalQty', {
                        totalQty: response.data.count
                    });

                    this.$store.commit('setGrandTotal', {
                        grandTotal: response.data.total
                    });

                    this.getPayableAmount();
                })
                .catch((exception) => {
                    console.log(exception);
                });
                console.log(index);
            }
            else{
                this.getGrandTotalFromMethod();
                this.getPayableAmount();

                return 1;
            }

        },
        updateProduct:function(product_id, price, index)
        {
            axios.post(this.url + '/admin/sale/update_cart_price', {
                    rowId: index,
                    price: price
                })
                .then((response) => {
                    console.log(response.data);
                    this.$store.commit('setCartiem', {
                                cartItem: response.data.cart // payload
                            });

                    this.$store.commit('setTotalQty', {
                        totalQty: response.data.count
                    });

                    this.$store.commit('setGrandTotal', {
                        grandTotal: response.data.total
                    });

                    this.getPayableAmount();
                })
                .catch((exception) => {
                    console.log(exception);
                });
                console.log(index);
            console.log(product_id, price);
        },
        deleteFromCart: function (cartRowId) {
            swal("Are you sure?", {
                title: "Warning!",
                text: "Are you sure!",
                dangerMode: true,
                buttons: true,
                icon: "warning"
            }).then((willDelete) => {
                if (willDelete) {
                    axios.post(this.url + '/admin/sale/delete-from-cart', {
                        rowId: cartRowId
                    })
                    .then((response) => {
                        toastr.error("Item has been deleted!");
                        this.$store.commit('setCartiem', {
                                    cartItem: response.data.cart // payload
                                });

                        this.$store.commit('setTotalQty', {
                            totalQty: response.data.count
                        });

                        this.$store.commit('setGrandTotal', {
                            grandTotal: response.data.total
                        });

                        this.getPayableAmount();

                        if (response.data.count < 1) {
                            this.active = false;
                        }
                        else{
                            this.active = true;
                            this.carts = response.data.cart;
                        }

                    })
                    .catch((exception) => {
                        console.log(exception);
                    });
                }
            });
        },
        deleteAllFromCart: function () {
            axios.get(this.url + '/admin/sale/allItemDelete')
            .then((response) => {
                toastr.error("All Item(s) has been deleted!");
                this.$store.commit('setCartiem', {
                            cartItem: '0'
                        });

                this.$store.commit('setTotalQty', {
                    totalQty: '0'
                });

                this.$store.commit('setGrandTotal', {
                    grandTotal: '0'
                });

                this.getPayableAmount();

                this.active = false;

            })
            .catch((exception) => {
                console.log(exception);
            });
        },
        addToSaleProduct: function () {
            var total = parseFloat(this.getGrandTotalFromMethod());

            total = total - parseFloat(this.discount) - (parseFloat(this.discount_2) * total) / 100 + (parseFloat(this.vat) * total) / 100;

            var payable_amount = parseFloat(this.payable_amount).toFixed(2);

            if (this.given_money >= total && payable_amount) {
                axios.post(this.url + '/admin/sale/add-to-sale-product', {
                    customer_name: this.customer_name,
                    customer_mobile: this.mobile,
                    given_money: this.given_money,
                    is_order: this.is_order,
                    discount: this.discount,
                    discount_2: this.discount_2,
                    vat: this.vat,
                    total_after_discount: this.payable_amount
                })
                .then((response) => {
                    window.location.href = this.url + "/admin/sale/view/" + response.data.id;
                })
                .catch((exception) => {
                    console.log(exception);
                });
            }
            else{

                toastr.error("Paid must be greater than or equal to total!");
            }
        },
        getGrandTotalFromMethod: function () {
            return this.$store.getters.getGrandTotal;
        },
        allCartData: function(){
            axios.get(this.url + '/admin/sale/all-cart-item')
            .then((response) => {
                if (response.data.count > 0) {
                    this.active = true;
                    this.$store.commit('setCartiem', {
                                cartItem: response.data.cart // payload
                            });
                    this.$store.commit('setTotalQty', {
                        totalQty: response.data.count
                    });
                    this.$store.commit('setGrandTotal', {
                        grandTotal: response.data.total
                    });

                    this.getPayableAmount();

                    if(response.data.count > 0){
                        this.active = true;
                        this.carts = response.data.cart;
                    }
                    else{
                        this.active = false;
                    }
                }
            })
            .catch((exception) => {
                console.log(exception);
            });
        },
        loadNewData: function(){
            this.allCartData();
        },
        getPayableAmount: function(){
            var total = this.getGrandTotalFromMethod();
            var payable = total - parseFloat(this.discount) - (parseFloat(this.discount_2) * total) / 100 + (parseFloat(this.vat) * total) / 100;
            this.payable_amount = parseFloat(payable).toFixed(2);
        }
    },
    watch: {
        given_money: function(value){
            var total = parseFloat(this.getGrandTotalFromMethod());
            total = total - parseFloat(this.discount) - (parseFloat(this.discount_2) * total) / 100 + (parseFloat(this.vat) * total) / 100;
            if(parseFloat(value) >= total){
                this.return_money = parseFloat(this.given_money - total).toFixed(2);
            }
            else{
                this.return_money = 0;
            }
        },
        discount: function(value){
            if(value > 0){
                var total = parseFloat(this.getGrandTotalFromMethod());
                total -= parseFloat(value);
                this.getPayableAmount();
            }
        },
        discount_2: function(value){
            if(value <= 100){
                var total = parseFloat(this.getGrandTotalFromMethod());
                total -= parseFloat(value);
                this.getPayableAmount();
            }
        }
    }
}
</script>
<style scoped>
    img {
        width: 80px;
        height: 80px;
    }

    .form-row {
        margin: 0;
    }
    .btn-small .btn .icon, .btn .fa {
        font-size: 10px !important;
        margin-right: 0 !important;
    }
    .btn-plus-minus {
        position: relative;
    }
    .btn-small{
        position: absolute;
        height:18px;
        right: 21px;
        line-height: 8px;
        padding: 0 9px;
    }
    .btn-small-success{
        top: 15px;
    }
    .btn-small-danger{
        bottom: 15px;
    }
</style>
