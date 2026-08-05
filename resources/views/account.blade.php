@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-8">

            <div class="card">
                <div class="card-header">
                    My Account
                </div>

                <div class="card-body">

                    <table class="table table-bordered">

                        <tr>
                            <th>ID</th>
                            <td>{{ $user->id }}</td>
                        </tr>

                        <tr>
                            <th>Name</th>
                            <td>{{ $user->name }}</td>
                        </tr>

                        <tr>
                            <th>Email</th>
                            <td>{{ $user->email }}</td>
                        </tr>

                        <tr>
                            <th>Email Verified</th>
                            <td>
                                {{ $user->email_verified_at ? 'Yes' : 'No' }}
                            </td>
                        </tr>

                        <tr>
                            <th>Registered On</th>
                            <td>{{ $user->created_at->format('d M Y h:i A') }}</td>
                        </tr>

                        <tr>
                            <th>Last Updated</th>
                            <td>{{ $user->updated_at->format('d M Y h:i A') }}</td>
                        </tr>

                    </table>

                </div>
            </div>

        </div>

    </div>
</div>
@endsection