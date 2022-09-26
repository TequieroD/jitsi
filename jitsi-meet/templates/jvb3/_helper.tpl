
{{- define "jitsi-meet.jvb3.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-jvb3
{{- end -}}

{{- define "jitsi-meet.jvb3.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: jvb3
{{- end -}}

{{- define "jitsi-meet.jvb3.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: jvb3
{{- end -}}

{{- define "jitsi-meet.jvb3.secret" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}-jvb3
{{- end -}}
