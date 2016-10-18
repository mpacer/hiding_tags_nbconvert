{%- extends 'full.tpl' -%}

{%- block any_cell -%}
{%- if 'hidden' in cell.metadata.get("tags",[]) -%}
{%- else -%}
    {{ super() }}
{%- endif -%}
{%- endblock any_cell -%}

{%-block input_group scoped-%}
{%- if 'hide_input' in cell.metadata.get("tags",[]) and cell.cell_type == 'code'-%}
{%- else -%}
    {{ super() }}
{%- endif -%}
{%-endblock input_group -%}


{%-block output_group scoped-%}
{%- if 'hide_output' in cell.metadata.get("tags",[]) and cell.cell_type == 'code'-%}
{%- else -%}
    {{ super() }}
{%- endif -%}
{%-endblock output_group -%}
