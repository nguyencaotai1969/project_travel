@extends('admin.layout-master')
@section('content')
<div class="container">
<form>
    
<textarea id="content" style="border:1px solid red;">
    </textarea>
<input class=" btn btn-primary" type="submit"value="submit">
</form>

</div>
<script type="text/javascript" src="{{asset('ckeditor/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{asset('ckeditor/ckeditor/ckeditor.js')}}"></script>
<script type="text/javascript"> 

CKEDITOR.replace("content",{    
                               toolbar: [
                    { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', '-', 'RemoveFormat','-','Source']},
                    { name: 'clipboard', items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']},
                    { name: 'styles', items : [ 'Styles','Format','Fonts','FontSize' ] },
                    { name: 'colors', items : [ 'TextColor','BGColor' ] },
                    { name: 'insert', items: ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe']},
                    { name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']},
                    { name: 'links', items: ['Link', 'Unlink', 'Anchor']},
                    { name: 'tools', items : [ 'Maximize','About'] }
                ],

                                extraPlugins: "tableresize"
                    });</script>

@endsection