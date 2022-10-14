
{{- define "jitsi-meet.prometheus.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-prometheus
{{- end -}}

{{- define "jitsi-meet.prometheus.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: prometheus
{{- end -}}

{{- define "jitsi-meet.prometheus.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: prometheus
{{- end -}}

