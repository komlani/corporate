@if ($errors->any())

    <ul>
        @foreach ($errors->all() as $error)
            <li class="error-message">{{ $error }}</li>
        @endforeach
    </ul>
    
@endif
