{{/* vim: set filetype=mustache: */}}
{{/*
Common labels
*/}}
{{- define "dashboard-metrics-scraper.labels" -}}
app.kubernetes.io/name: {{ .Values.metricsScraper.name }}
helm.sh/chart: {{ include "kubernetes-dashboard.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Common label selectors
*/}}
{{- define "dashboard-metrics-scraper.matchLabels" -}}
app.kubernetes.io/name: {{ .Values.metricsScraper.name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
