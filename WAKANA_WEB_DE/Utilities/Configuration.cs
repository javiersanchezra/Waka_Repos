using System.Collections.Generic;
using PayPal.Api;

namespace WAKANA_WEB_DE
{ 
    public static class Configuration
    {
        public readonly static string ClientId;

        public readonly static string ClientSecret;

        static Configuration()
        {
            Dictionary<string, string> config = Configuration.GetConfig();
            Configuration.ClientId = config["clientId"];
            Configuration.ClientSecret = config["clientSecret"];
        }

        private static string GetAccessToken()
        {
            return (new OAuthTokenCredential(Configuration.ClientId, Configuration.ClientSecret, Configuration.GetConfig())).GetAccessToken();
        }

        public static APIContext GetAPIContext(string accessToken = "")
        {
            return new APIContext((string.IsNullOrEmpty(accessToken) ? Configuration.GetAccessToken() : accessToken))
            {
                Config = Configuration.GetConfig()
            };
        }

        public static Dictionary<string, string> GetConfig()
        {
            return ConfigManager.Instance.GetProperties();
        }

    }
}
 