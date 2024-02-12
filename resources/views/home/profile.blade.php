@extends('layouts.home.app')
@section('title', ' home')
@section('main_content')
    <br><br><br>
    <main class="bg_gray">

        <div class="container margin_60_20">
            <div class="row justify-content-center">
                @php
                    $user = Auth()->user();

                @endphp
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="{{ asset('storage/app/public/profile/' . $user->image) }}" id="profile_picture"
                                        onerror="this.src='{{ asset('public/home_assets/img/avatar.jpg') }}'" alt="Profile Picture"
                                        class=" rounded-circle mb-3" width="100" height="100">
                                    <h5 class="card-title">{{ $user->f_name ?? '' }}</h5>
                                    <p class="card-text">{{ $user->email ?? '' }}</p>
                                    <button class="btn btn-teal editBtn">Edit Profile</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 personalInformation">
                            <h3>Personal Information</h3>
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-md-3 my-2 h6">Name : </div>
                                        <div class="col-md-9 my-2 h6 b">{{ $user->f_name . ' ' . $user->l_name ?? '' }}
                                        </div>
                                        <div class="col-md-3 my-2 h6">Phone # </div>
                                        <div class="col-md-9 my-2 h6 b">{{ $user->phone ?? '' }}</div>
                                        <div class="col-md-3 my-2 h6">Email : </div>
                                        <div class="col-md-9 my-2 h6 b">{{ $user->email ?? '' }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 updateForm" style="display: none;">
                            <div class="card">
                                <div class="card-body">
                                    <h3>Update Personal Information</h3>
                                    <div id="msg">

                                    </div>
                                    <form id="profileForm" enctype="multipart/form-data">
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email <span
                                                    class="text-danger"></span></label>
                                            <input required type="email" name="email"  readonly
                                                class="form-control" id="e_mail" value="{{ $user->email ?? '' }}">
                                            <span class="text-danger" id="emailError"> email field is required</span>
                                        </div>
                                        <div class="mb-3">
                                            <label for="f_name" class="form-label">First Name <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="f_name" name="f_name"
                                                value="{{ $user->f_name ?? '' }}">
                                            <span class="text-danger" id="fNameError"> first name field is required</span>

                                        </div>
                                        <div class="mb-3">
                                            <label for="l_name" class="form-label">Last Name</label>
                                            <input type="text" class="form-control" id="l_name" name="l_name"
                                                value="{{ $user->l_name ?? '' }}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="phone" class="form-label">Phone</label>
                                            <input type="tel" class="form-control" name="phone" id="phone"
                                                value="{{ $user->phone ?? '' }}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="image" class="form-label">Image</label>
                                            <input type="file" class="form-control" name="image" id="image">
                                        </div>
                                        <button type="button" class="btn btn-secondary btnCancel">cancel</button>
                                        <button type="submit" class="btn btn-orange saveChanges">Save Changes</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /col -->


            </div>
            <!-- /row -->
        </div>
        <!-- /container -->

    </main>

@endsection
@section('scripts')
    <script>
        $('.updateForm').hide();
        $('#fNameError').hide();
        $('#emailError').hide();
        $(function() {
            $(".editBtn").click(function() {
                $('.updateForm').toggle();
                $('.personalInformation').toggle();

            });
            $(".btnCancel").click(function() {
                $('.updateForm').hide();
                $('.personalInformation').show();

            });
            $('#profileForm').submit(function(e) {
                e.preventDefault();
                var email = $('#e_mail').val();
                var f_name = $('#f_name').val();
                var l_name = $('#l_name').val();
                var phone = $('#phone').val();
                var img = $('#image').val();
                if (email == '') {
                    return $('#emailError').show();

                }
                if (f_name == '') {
                    return $('#fNameError').show();

                }
                $("#loading").show();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                        'Authorization': "Bearer {{ Session::get('token') }}",
                        contentType: "application/json",
                    }
                });
                var formData = new FormData(this);
                 console.log(formData);
                // var data = {
                //     'email': email,
                //     'f_name': f_name,
                //     'l_name': l_name,
                //     'phone': phone,
                //     'image': img,
                // }

                $.ajax({
                    type: "post",
                    url: "{{ url('api/v1/customer/update-profile') }}",
                    data: formData,
                    dataType: 'JSON',
                    contentType: false,
                    processData: false,

                    success: function(response) {
                        $("#loading").hide();

                        showMsg(response.message, 'alert-success');
                        location.reload();

                        console.log(response);
                    },
                    error: function(error) {
                        $("#loading").hide();

                        console.error(error);
                        showMsg(error.responseJSON.message, 'alert-danger');
                    }
                });
            });

            function showMsg(message, withClass) {
                var innerHtml = `
                            <div class="alert ${withClass} alert-dismissible fade show">            
                                ${message}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>    `;
                $('#msg').empty();
                $('#msg').append(innerHtml);
            }
            
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#profile_picture').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#image").change(function() {
                readURL(this);
            });
        });
    </script>
@endsection
