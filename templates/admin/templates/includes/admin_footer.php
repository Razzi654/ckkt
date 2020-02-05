<!-- Placed at the end of the document so the pages load faster -->
<!-- Optional Bootstrap JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src = "../../../../js/add_js/jquery-3.2.1.slim.min.js"></script>
<script src = "../../../../js/add_js/popper.min.js"></script>
<script src = "../../../../js/add_js/bootstrap.min.js"></script>

<!--<script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src = "../../../../js/wysiwyg/additionControl.js"></script>
<script src = "../../../../js/wysiwyg/JsonLoader.js"></script>
<script src = "../../../../js/wysiwyg/RangeControl.js"></script>
<script src = "../../../../js/wysiwyg/Clipboard.js"></script>
<script src = "../../../../js/wysiwyg/pictureLoader.js"></script>
<script src = "../../../../js/wysiwyg/editor.js"></script>
-->

<script>
    DecoupledEditor
        .create( document.querySelector( '#editor' ), {
            language: 'ru'
        } )
        .then( editor => {
        const toolbarContainer = document.querySelector( '#toolbar-container' );

    toolbarContainer.appendChild( editor.ui.view.toolbar.element );
    } )
    .catch( error => {
        console.error( error );
    } );
</script>

<script>
    $(document).ready(function() {
        $('#example').DataTable( {
            "order": [[ 4, "desc" ]]
        } );
    } );
</script>

<script src = "https://code.jquery.com/jquery-1.12.4.js"></script>
<script src = "https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src = "https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
