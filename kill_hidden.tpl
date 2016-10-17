{%- extends 'full.tpl' -%}

{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
{%- elif 'hide_output' in cell.metadata.get("tags",[]) and cell.cell_type == 'code'-%}
{%- elif 'hide_input' in cell.metadata.get("tags",[]) and cell.cell_type == 'code'-%}
{%- else -%}
    {{ super() }}
{%- endif -%}
{%- endblock any_cell -%}
