// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.Sql.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// A domain name that the managed instance service needs to communicate
    /// with, along with additional details.
    /// </summary>
    public partial class EndpointDetail
    {
        /// <summary>
        /// Initializes a new instance of the EndpointDetail class.
        /// </summary>
        public EndpointDetail()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the EndpointDetail class.
        /// </summary>
        /// <param name="port">The port an endpoint is connected to.</param>
        public EndpointDetail(int? port = default(int?))
        {
            Port = port;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets the port an endpoint is connected to.
        /// </summary>
        [JsonProperty(PropertyName = "port")]
        public int? Port { get; private set; }

    }
}
