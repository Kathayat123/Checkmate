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
using System.Security.Cryptography;

namespace CaptchaDotNet2.Security.Cryptography
{
    /// <summary>
    /// Provides methods for generating cryptographically-strong random numbers.
    /// </summary>
    public static class RNG
    {
        private static byte[] randb = new byte[4];
        private static RNGCryptoServiceProvider rand = new RNGCryptoServiceProvider();
        
        /// <summary>
        /// Generates a random non-negative number.  
        /// </summary>
        public static int Next()
        {
            rand.GetBytes(randb);
            int value = BitConverter.ToInt32(randb, 0);
            if (value < 0) value = -value;
            return value;
        }
        /// <summary>
        /// Generates a random non-negative number less than or equal to max.
        /// </summary>
        /// <param name="max">The maximum possible value.</param>
        public static int Next(int max)
        {
            rand.GetBytes(randb);
            int value = BitConverter.ToInt32(randb, 0);
            value = value % (max + 1); // % calculates remainder
            if (value < 0) value = -value;
            return value;
        }
        /// <summary>
        /// Generates a random non-negative number bigger than or equal to min and less than or
        ///  equal to max.
        /// </summary>
        /// <param name="min">The minimum possible value.</param>
        /// <param name="max">The maximum possible value.</param>
        public static int Next(int min, int max)
        {
            int value = Next(max - min) + min;
            return value;
        }
    }
}