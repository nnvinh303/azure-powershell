
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates the alert rule.
.Description
Updates the alert rule.
.Example
Update-AzSentinelAlertRule -ResourceGroupName "myResourceGroupName" -WorkspaceName "myWorkspaceName" -ruleId "4a21e485-75ae-48b3-a7b9-e6a92bcfe434" -Query "SecurityAlert | take 2"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AlertRule
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ENTITYMAPPING <EntityMapping[]>: 'Account', 'Host', 'IP', 'Malware', 'File', 'Process', 'CloudApplication', 'DNS', 'AzureResource', 'FileHash', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'URL', 'Mailbox', 'MailCluster', 'MailMessage', 'SubmissionMail'
  [EntityType <EntityMappingType?>]: The V3 type of the mapped entity
  [FieldMapping <IFieldMapping[]>]: array of field mappings for the given entity mapping
    [ColumnName <String>]: the column name to be mapped to the identifier
    [Identifier <String>]: the V3 identifier of the entity

INPUTOBJECT <ISecurityInsightsIdentity>: Identity Parameter
  [ActionId <String>]: Action ID
  [AlertRuleTemplateId <String>]: Alert rule template ID
  [AutomationRuleId <String>]: Automation rule ID
  [BookmarkId <String>]: Bookmark ID
  [ConsentId <String>]: consent ID
  [DataConnectorId <String>]: Connector ID
  [EntityId <String>]: entity ID
  [EntityQueryId <String>]: entity query ID
  [EntityQueryTemplateId <String>]: entity query template ID
  [Id <String>]: Resource identity path
  [IncidentCommentId <String>]: Incident comment ID
  [IncidentId <String>]: Incident ID
  [MetadataName <String>]: The Metadata name.
  [Name <String>]: Threat intelligence indicator name field.
  [RelationName <String>]: Relation Name
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [RuleId <String>]: Alert rule ID
  [SentinelOnboardingStateName <String>]: The Sentinel onboarding state name. Supports - default
  [SettingsName <String>]: The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  [SourceControlId <String>]: Source control Id
  [SubscriptionId <String>]: The ID of the target subscription.
  [WorkspaceName <String>]: The name of the workspace.
.Link
https://learn.microsoft.com/powershell/module/az.securityinsights/Update-azsentinelalertrule
#>
function Update-AzSentinelAlertRule {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AlertRule])]
[CmdletBinding(DefaultParameterSetName='UpdateScheduled', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateScheduled', Mandatory)]
    [Parameter(ParameterSetName='UpdateNRT', Mandatory)]
    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation', Mandatory)]
    [Parameter(ParameterSetName='UpdateFusionMLTI', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
    [System.String]
    # The Resource Group Name.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='UpdateScheduled', Mandatory)]
    [Parameter(ParameterSetName='UpdateNRT', Mandatory)]
    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation', Mandatory)]
    [Parameter(ParameterSetName='UpdateFusionMLTI', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
    [System.String]
    # The name of the workspace.
    ${WorkspaceName},

    [Parameter(ParameterSetName='UpdateScheduled', Mandatory)]
    [Parameter(ParameterSetName='UpdateNRT', Mandatory)]
    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation', Mandatory)]
    [Parameter(ParameterSetName='UpdateFusionMLTI', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
    [System.String]
    # [Alias('RuleId')]
    #  The name of Operational Insights Resource Provider.
    ${RuleId},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateFusionMLTI')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityFusionMLTI', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${AlertRuleTemplateName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${Enabled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${Disabled},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${Description},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${Query},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script='New-TimeSpan -Hours 5')]
    [System.TimeSpan]
    ${SuppressionDuration},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${SuppressionEnabled},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity]
    ${Severity},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AttackTactic])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AttackTactic]
    ${Tactic},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${CreateIncident},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${GroupingConfigurationEnabled},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    ${ReOpenClosedIncident},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script='New-TimeSpan -Hours 5')]
    [System.TimeSpan]
    ${LookbackDuration},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script='"AllEntities"')]
    [System.String]
    ${MatchingMethod},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertDetail])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertDetail[]]
    ${GroupByAlertDetail},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String[]]
    ${GroupByCustomDetail},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EntityMappingType])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EntityMappingType[]]
    ${GroupByEntity},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.EntityMapping[]]
    # 'Account', 'Host', 'IP', 'Malware', 'File', 'Process', 'CloudApplication', 'DNS', 'AzureResource', 'FileHash', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'URL', 'Mailbox', 'MailCluster', 'MailMessage', 'SubmissionMail'
    # To construct, see NOTES section for ENTITYMAPPING properties and create a hash table.
    ${EntityMapping},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${AlertDescriptionFormat},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${AlertDisplayNameFormat},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${AlertSeverityColumnName},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateNRT')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String]
    ${AlertTacticsColumnName},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.TimeSpan]
    ${QueryFrequency},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.TimeSpan]
    ${QueryPeriod},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.TriggerOperator])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.TriggerOperator]
    ${TriggerOperator},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.Int32]
    ${TriggerThreshold},

    [Parameter(ParameterSetName='UpdateScheduled')]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EventGroupingAggregationKind])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EventGroupingAggregationKind]
    ${EventGroupingSettingAggregationKind},

    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String[]]
    ${DisplayNamesFilter},

    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [System.String[]]
    ${DisplayNamesExcludeFilter},

    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.MicrosoftSecurityProductName])]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.MicrosoftSecurityProductName]
    ${ProductFilter},

    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation')]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity[]]
    # High, Medium, Low, Informational
    ${SeveritiesFilter},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(ParameterSetName='UpdateScheduled', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityUpdateScheduled', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    ${Scheduled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='UpdateNRT', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityNRT', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    ${NRT},

    [Parameter(ParameterSetName='UpdateMicrosoftSecurityIncidentCreation', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityMicrosoftSecurityIncidentCreation', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    ${MicrosoftSecurityIncidentCreation},

    [Parameter(ParameterSetName='UpdateFusionMLTI', Mandatory)]
    [Parameter(ParameterSetName='UpdateViaIdentityFusionMLTI', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    ${FusionMLorTI}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            UpdateScheduled = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateNRT = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateMicrosoftSecurityIncidentCreation = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateFusionMLTI = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateViaIdentityUpdateScheduled = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateViaIdentityNRT = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateViaIdentityMicrosoftSecurityIncidentCreation = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
            UpdateViaIdentityFusionMLTI = 'Az.SecurityInsights.custom\Update-AzSentinelAlertRule';
        }
        if (('UpdateScheduled', 'UpdateNRT', 'UpdateMicrosoftSecurityIncidentCreation', 'UpdateFusionMLTI') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        if (('UpdateScheduled', 'UpdateNRT', 'UpdateViaIdentityUpdateScheduled', 'UpdateViaIdentityNRT') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SuppressionDuration')) {
            $PSBoundParameters['SuppressionDuration'] = New-TimeSpan -Hours 5
        }
        if (('UpdateScheduled', 'UpdateNRT', 'UpdateViaIdentityUpdateScheduled', 'UpdateViaIdentityNRT') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('LookbackDuration')) {
            $PSBoundParameters['LookbackDuration'] = New-TimeSpan -Hours 5
        }
        if (('UpdateScheduled', 'UpdateNRT', 'UpdateViaIdentityUpdateScheduled', 'UpdateViaIdentityNRT') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('MatchingMethod')) {
            $PSBoundParameters['MatchingMethod'] = "AllEntities"
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
