{%- extends 'full.tpl' -%}

{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
    <div class="hidden_cell">
    <input class="hide_cell" type="checkbox" checked></input>
        {{super() }}
    </div>
{%- elif 'hide_output' in cell.metadata.get("tags",[]) -%}
    <div class="hide_output_cell">
    <input class="hide_output" type="checkbox" checked></input>
        {{super() }}
    </div>
{%- elif 'hide_input' in cell.metadata.get("tags",[]) -%}
    <div class="hide_input_cell">
    <input class="hide_input" type="checkbox" checked></input>
        {{super() }}
    </div>
{%- else -%}
    {{ super() }}
{%- endif -%}
{%- endblock any_cell -%}


{%- block header -%}
{{ super() }}

<style type="text/css">

:root{
--in-time: .5s;
--out-time: .5s;
}

div.hidden_cell > div.cell{
    transition: max-height var(--in-time) ease-in, padding .0s step-end;
    max-height: 5000px;
}

div.hide_output_cell  div.output_wrapper{
    transition: max-height var(--in-time) ease-in-out, padding .0s step-end;
    max-height: 5000px;
}

div.hide_input_cell  div.input{
    transition: max-height var(--in-time) ease-in-out, padding .0s step-end;
    max-height: 5000px;
}

div.hidden_cell, div.hide_output_cell, div.hide_input_cell{ display: flex; }

input[type=checkbox]{ align-self:center; }

input[type=checkbox].hide_cell:checked + div{
    overflow:hidden;
    max-height:0px;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

input[type=checkbox].hide_output:checked  + div div.output_wrapper{
    overflow:hidden;
    max-height:0px;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

input[type=checkbox].hide_input:checked  + div div.input{
    overflow:hidden;
    max-height:0px;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

</style>
{%- endblock header -%}
