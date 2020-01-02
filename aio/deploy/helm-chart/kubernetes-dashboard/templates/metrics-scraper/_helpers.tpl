# Copyright 2017 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
