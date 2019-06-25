Nonterminals


Terminals
 'query' 'mutation' 'subscription' 'fragment' 'on' 'null' 'directive'
 'type' 'implements' 'interface' 'union' 'scalar' 'enum' 'input' 'extend'
 'schema' name int_value float_value string_value boolean.

Rootsymbol Document.

Document -> Definitions
Definitions -> Definition : ['$1']

OperationType -> 'query' : extract_atom('$1').
OperationType -> 'mutation' : extract_atom('$1').
OperationType -> 'subscription' : extract_atom('$1').

OperationDefinition -> SelectionSet : build_ast_node('OperationDefinition', #{'operation' => 'query', 'selection_set' => '$1'}, #{'start_line' => extract_child_line('$1')}).
OperationDefinition -> OperationType SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'selection_set' => '$2'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType VariableDefinitions SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'variable_definitions' => '$2', 'selection_set' => '$3'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType VariableDefinitions Directives SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'variable_definitions' => '$2', 'directives' => '$3', 'selection_set' => '$4'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType Name SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'name' => extract_binary('$2'), 'selection_set' => '$3'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType Name VariableDefinitions SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'name' => extract_binary('$2'), 'variable_definitions' => '$3', 'selection_set' => '$4'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType Name Directives SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'name' => extract_binary('$2'), 'directives' => '$3', 'selection_set' => '$4'}, #{'start_line' => extract_line('$2')}).
OperationDefinition -> OperationType Name VariableDefinitions Directives SelectionSet : build_ast_node('OperationDefinition', #{'operation' => '$1', 'name' => extract_binary('$2'), 'variable_definitions' => '$3', 'directives' => '$4', 'selection_set' => '$5'}, #{'start_line' => extract_line('$2')}).



Erlang code.