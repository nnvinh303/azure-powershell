// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.CognitiveServices.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Cognitive Services account commitment tier.
    /// </summary>
    public partial class CommitmentTier
    {
        /// <summary>
        /// Initializes a new instance of the CommitmentTier class.
        /// </summary>
        public CommitmentTier()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the CommitmentTier class.
        /// </summary>
        /// <param name="kind">The Kind of the resource.</param>
        /// <param name="skuName">The name of the SKU. Ex - P3. It is typically
        /// a letter+number code</param>
        /// <param name="hostingModel">Account hosting model. Possible values
        /// include: 'Web', 'ConnectedContainer', 'DisconnectedContainer',
        /// 'ProvisionedWeb'</param>
        /// <param name="planType">Commitment plan type.</param>
        /// <param name="tier">Commitment period commitment tier.</param>
        /// <param name="maxCount">Commitment period commitment max
        /// count.</param>
        public CommitmentTier(string kind = default(string), string skuName = default(string), string hostingModel = default(string), string planType = default(string), string tier = default(string), int? maxCount = default(int?), CommitmentQuota quota = default(CommitmentQuota), CommitmentCost cost = default(CommitmentCost))
        {
            Kind = kind;
            SkuName = skuName;
            HostingModel = hostingModel;
            PlanType = planType;
            Tier = tier;
            MaxCount = maxCount;
            Quota = quota;
            Cost = cost;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the Kind of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "kind")]
        public string Kind { get; set; }

        /// <summary>
        /// Gets or sets the name of the SKU. Ex - P3. It is typically a
        /// letter+number code
        /// </summary>
        [JsonProperty(PropertyName = "skuName")]
        public string SkuName { get; set; }

        /// <summary>
        /// Gets or sets account hosting model. Possible values include: 'Web',
        /// 'ConnectedContainer', 'DisconnectedContainer', 'ProvisionedWeb'
        /// </summary>
        [JsonProperty(PropertyName = "hostingModel")]
        public string HostingModel { get; set; }

        /// <summary>
        /// Gets or sets commitment plan type.
        /// </summary>
        [JsonProperty(PropertyName = "planType")]
        public string PlanType { get; set; }

        /// <summary>
        /// Gets or sets commitment period commitment tier.
        /// </summary>
        [JsonProperty(PropertyName = "tier")]
        public string Tier { get; set; }

        /// <summary>
        /// Gets or sets commitment period commitment max count.
        /// </summary>
        [JsonProperty(PropertyName = "maxCount")]
        public int? MaxCount { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "quota")]
        public CommitmentQuota Quota { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "cost")]
        public CommitmentCost Cost { get; set; }

    }
}
