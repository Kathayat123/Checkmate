/*================================Developed by bipin on oct 28=====================
     *======================================Notes======================================
     * This code was wrote using an article in the code project web site.
     * Web Site: https://www.124.153.106.75/thaparun: pls. before change pls. contact with me
     * Article: Captcha Image
     * 
     * Some changes were done to this code
     *=================================================================================
     *====================================End of Notes=================================
     */
using System;

namespace CaptchaDotNet2.Security.Cryptography
{
    /// <summary>
    /// Provides methods for generating random texts.
    /// </summary>
    public static class RandomText
    {
        /// <summary>
        /// Generates an 4 letter random text.
        /// </summary>
        public static string Generate()
        {
            // Generate random text
            string s = "";
            char[] chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray();
            int index;
            int lenght = RNG.Next(5, 5);
            for (int i = 0; i < lenght; i++)
            {
                index = RNG.Next(chars.Length - 1);
                s += chars[index].ToString();
            }
            return s;
        }
    }
}