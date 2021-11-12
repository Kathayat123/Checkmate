using System;

namespace Common
{
    /// <summary>
    /// Summary description for PassGen.
    /// </summary>
    public class PassGen
    {
        public string getPassword(string MerchantId)
        {
            string str;
            long adler;
            str = MerchantId;
            adler = 1;
            return Passadler32(adler, str);
        }

        private string Passadler32(long adler, string strPattern)
        {
            long BASE;
            long s1, s2;
            char[] testchar;
            long intTest = 0;

            BASE = 65521;
            s1 = Passandop(adler, 65535);
            s2 = Passandop(Passcdec(Passrightshift(Passcbin(adler), 16)), 65535);

            for (int n = 0; n < strPattern.Length; n++)
            {

                testchar = (strPattern.Substring(n, 1)).ToCharArray();
                intTest = (long)testchar[0];
                s1 = (s1 + intTest) % BASE;
                s2 = (s2 + s1) % BASE;
            }
            return (Passcdec(Passleftshift(Passcbin(s2), 16)) + s1).ToString();
        }


        private long Passpower(long num)
        {
            long result = 1;
            for (int i = 1; i <= num; i++)
            {
                result = result * 2;
            }
            return result;
        }


        private long Passandop(long op1, long op2)
        {
            string op, op3, op4;
            op = "";

            op3 = Passcbin(op1);
            op4 = Passcbin(op2);

            for (int i = 0; i < 32; i++)
            {
                op = op + "" + ((long.Parse(op3.Substring(i, 1))) & (long.Parse(op4.Substring(i, 1))));
            }
            return Passcdec(op);
        }

        private string Passcbin(long num)
        {
            string bin = "";
            do
            {
                bin = (((num % 2)) + bin).ToString();
                num = (long)(num / 2);
            } while (!(num == 0));

            long tempCount = 32 - bin.Length;

            for (int i = 1; i <= tempCount; i++)
            {
                bin = "0" + bin;
            }
            return bin;
        }


        private string Passleftshift(string str, long num)
        {
            long tempCount = 32 - str.Length;

            for (int i = 1; i <= tempCount; i++)
            {

                str = "0" + str;
            }

            for (int i = 1; i <= num; i++)
            {
                str = str + "0";
                str = str.Substring(1, str.Length - 1);
            }
            return str;
        }


        private string Passrightshift(string str, long num)
        {

            for (int i = 1; i <= num; i++)
            {
                str = "0" + str;
                str = str.Substring(0, str.Length - 1);
            }
            return str;
        }

        private long Passcdec(string strNum)
        {
            long dec = 0;
            for (int n = 0; n < strNum.Length; n++)
            {
                dec = dec + (long)(long.Parse(strNum.Substring(n, 1)) * Passpower(strNum.Length - (n + 1)));
            }
            return dec;
        }

    }
}
