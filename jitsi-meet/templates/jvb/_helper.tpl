
{{- define "jitsi-meet.jvb.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-jvb
{{- end -}}

{{- define "jitsi-meet.jvb.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: jvb
{{- end -}}

{{- define "jitsi-meet.jvb.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: jvb
{{- end -}}

{{- define "jitsi-meet.jvb.secret" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}-jvb
{{- end -}}

Create a default fully qualified shard name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "jitsi-meet.jvb.fullShardName" -}}
{{- printf "%s-%s" (include "jitsi-meet.fullname" .root | trunc 40) .shardName | trunc 55 | trimSuffix "-" }}
{{- end }}