@extends('backend.layouts.master')

@section('fav_title', __('backend/menu.edit_menu') )

@section('content')
<div class="app-title">
  <div>
    <h1><i class="fa fa-laptop"></i> {{ __('backend/menu.menu_management') }}</h1>
  </div>
  <ul class="app-breadcrumb breadcrumb">
    <li class="breadcrumb-item"><i class="fa-code-fork fa-lg fa-fw"></i><a href="{{ route('admin.home') }}">{{ __('backend/default.dashboard') }}</a></li>
    <li class="breadcrumb-item"><a href="{{ route('admin.menu.index') }}">{{ __('backend/menu.menu') }}</a></li>
    <li class="breadcrumb-item active">{{ __('backend/default.edit') }}</li>
  </ul>
</div>

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col-md-6"><h2><i class="fa fa-table"> {{ __('backend/menu.menu') }}</i></h2></div>
          <div class="col-md-6"><a href="{{ route('admin.menu.index') }}" class="float-right btn btn-primary"><i class="fa fa-arrow-left"></i> {{ __('backend/menu.menu_list') }}</a></div>
          <div class="clearfix"></div>
        </div>
      </div>

      <div class="card-body">
        @include('backend.partials.message')
        <form action="{{ route('admin.menu.update', $singleMenu->id) }}" method="post">
          @csrf
          <div class="form-row">
            <div class="col-md-4 form-group">
              <label for="menu">Name <span class="text-danger">*</span></label>
              <input type="text" class="form-control" name="menu" id="menu" placeholder="menu name" value="{{ $singleMenu->menu }}" required>
            </div>

            <div class="col-md-4 form-group">
              <label for="menu_bn">Name (Bn) <span class="text-danger">*</span></label>
              <input type="text" class="form-control avro_bn" name="menu_bn" id="menu_bn" value="{{ $singleMenu->menu_bn }}" placeholder="menu bangla name" required>
            </div>

            <div class="col-md-4 form-group">
              <label for="url">URL </label>
              <input type="text" class="form-control" name="url" id="url" placeholder="menu name" value="{{ $singleMenu->url }}">
            </div>
            
          </div>

          <div class="form-row">
            <div class="col-md-6 form-group">
              <label for="parent_id">Parent Menu</label>
              <select name="parent_id" id="parent_id" class="form-control">
                <option value="" selected>Select Parent Menu</option>
                @foreach($menus as $menu)
                <option value="{{ $menu->id }}"
                  @if($menu->id == $singleMenu->parent_id)
                  {{ 'selected' }}
                  @endif
                  >{{ $menu->menu }}</option>
                  @endforeach
                </select>
              </div>

              <div class="col-md-6 form-group">
                <label for="menu_position">Position <span class="text-danger">*</span></label>
                <select name="menu_position" id="menu_position" class="form-control" required>
                  <option value="0" {{ $singleMenu->menu_position == 0 ? 'selected' : '' }}>Sidebar</option>option>
                  <option value="1" {{ $singleMenu->menu_position == 1 ? 'selected' : '' }}>In Body</option>option>
                </select>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6 form-group">
                <label for="icon">Icon <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="icon" id="icon" placeholder="menu icon" value="{{ $singleMenu->icon }}" required>
              </div>

              <div class="col-md-6 form-group">
                <label for="order">Menu Order <span class="text-danger">*</span></label>
                <input type="number" class="form-control" name="order" id="order" value="{{ $singleMenu->order }}" placeholder="menu order" required>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6 form-group">
                <label for="route">Route </label>
                <input type="text" class="form-control" name="route" id="route" value="{{ $singleMenu->route }}">
              </div>

              <div class="col-md-6 form-group">
                <label for="status">Status </label>
                <select name="status" id="status" class="form-control">
                  <option value="1" {{ $singleMenu->status == 0 ? 'selected' : '' }}>Active</option>
                  <option value="0" {{ $singleMenu->status == 0 ? 'selected' : '' }}>Deactive</option>
                </select>
              </div>
            </div>

            <button type="submit" name="save_menu" class="btn btn-success float-right">{{ __('backend/default.submit') }}</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  @endsection

@section('scripts')
  <script>
    $(document).ready(function(){
        $('#parent_id').select2();
    });
  </script>
@endsection
