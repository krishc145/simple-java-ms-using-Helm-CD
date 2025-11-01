{{- define "simple-java-ms.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "simple-java-ms.fullname" -}}
{{- printf "%s-%s" (include "simple-java-ms.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
