{%- extends 'full.tpl' -%}


{%- block header -%}
{{ super() }}
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script> -->

<style type="text/css">
div.hidden_cell{
    transition:.25s ease-out;
    max-height: 9999px;
}

input[type=checkbox]:checked + div.hidden_cell{
    overflow:hidden;
    max-height:0px;
    transition:1s ease-in;
}

<!-- div.hidden_cell_holder{ -->
    <!-- display:flex; -->
    <!-- flex-direction: row; -->
    <!-- align-items: stretch; -->
    <!-- overflow: hidden; -->
    <!-- -webkit-box-sizing: border-box; -->
    <!-- -moz-box-sizing: border-box; -->
    <!-- box-sizing: border-box; -->
<!--  -->
<!-- } -->


</style>

{#
<script>
$(document).ready(function(){
    $(".clickimage").click(function(){  // This is where it breaks because there's nothing left to use as the toggle.  
        $(this).next('.hidden_cell').slideToggle();
    });
})
</script>
#}

{%- endblock header -%}


{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
<!--<div class="hidden_cell_holder cell border-box-sizing" >-->
    <input class="clickimage" type="checkbox"></input>
    <div class="hidden_cell">
        {{super() }}
    </div>
<!--</div>-->
{%- else -%}
{{ super() }}
{%- endif -%}
{%- endblock any_cell -%}

