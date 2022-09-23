
{{- define "jitsi-meet.jvb2.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-jvb2
{{- end -}}

{{- define "jitsi-meet.jvb2.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: jvb2
{{- end -}}

{{- define "jitsi-meet.jvb2.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: jvb2
{{- end -}}

{{- define "jitsi-meet.jvb2.secret" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}-jvb2
{{- end -}}
