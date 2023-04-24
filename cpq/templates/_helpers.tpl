{{/*
CPQ Client configuration in JSON format
*/}}
{{- define "cpq-client-configuration" -}}
{{ toJson .Values.client.configuration.contents | indent 4 }}
{{- end }}

{{/*
CPQ Server configuration in JSON format
*/}}
{{- define "cpq-server-configuration" -}}
{{ toJson .Values.server.configuration.contents | indent 4 }}
{{- end }}

{{/*
CPQ Server header configuration in JSON format
*/}}
{{- define "cpq-server-header-configuration" -}}
{{ toJson .Values.server.headerConfiguration.contents | indent 4 }}
{{- end }}
