{%- extends 'full.tpl' -%}

{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
    <div class="hidden_cell">
    <input class="hide_cell" type="checkbox" checked></input>
        {{super() }}
        {{cell.metadata.tags}}
    </div>
{%- elif 'hide_output' in cell.metadata.get("tags",[]) -%}
    <div class="hide_output_cell">
    <input class="hide_output" type="checkbox" checked></input>
        {{super() }}
    </div>
{%- else -%}
    <div>
    {{ super() }}
    <p>{{cell.metadata.get("tags")}}</p>
    </div>
{%- endif -%}
{%- endblock any_cell -%}


{%- block header -%}
{{ super() }}

<style type="text/css">
div.hidden_cell > div.cell{
    --in-time: .5s;
    transition: max-height var(--in-time) ease-in, padding .0s step-end;
    max-height: 1000px;
}

div.hide_output_cell  div.output_wrapper{
    --in-time: .5s;
    transition: max-height var(--in-time) ease-in, padding .0s step-end;
    max-height: 1000px;
}
div.hidden_cell{ display: flex; }

input[type=checkbox]{ align-self:center; }

input[type=checkbox].hide_cell:checked + div{
    overflow:hidden;
    max-height:0px;
    --out-time: .5s;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

input[type=checkbox].hide_output:checked  + div div.output_wrapper{
    overflow:hidden;
    max-height:0px;
    --out-time: .5s;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

</style>
{%- endblock header -%}
