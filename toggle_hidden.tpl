{%- extends 'full.tpl' -%}

{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
    <div class="hidden_cell">
    <input type="checkbox" checked></input>
        {{super() }}
    </div>
{%- else -%}
{{ super() }}
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

div.hidden_cell{display: flex;}

input[type=checkbox]{
    align-self:center;
}

input[type=checkbox]:checked + div{
    overflow:hidden;
    max-height:0px;
    --out-time: .5s;
    transition: max-height var(--out-time) cubic-bezier(0, 0.67, 0.36, 1), padding var(--out-time) step-end;
    padding:0px;
}

</style>
{%- endblock header -%}
