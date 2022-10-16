{{- define "jitsi-meet.grafana.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-grafana
{{- end -}}

{{- define "jitsi-meet.grafana.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: grafana
{{- end -}}

{{- define "jitsi-meet.grafana.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: grafana
{{- end -}}
