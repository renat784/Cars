using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp1
{
    class Carusel
    {
        private int Start { get; set; }
        private int End { get; set; }
       

        private  int lastValue = 0;
        private bool Infinite;
        public bool CanGo { get; private set; }

        private bool Backward { get;  set; }

        /// <summary>
        /// Simple caruesel from start value to end value with step 1.
        /// Use 'CanGo' property in while cycle to take 'Next()' value.
        /// </summary>
        /// <param name="start">First value</param>
        /// <param name="end">Last value</param>
        public Carusel(int start, int end)
        {
            this.Start = start;
            lastValue = start;
            this.End = end;
            this.CanGo = true;

        }

        /// <summary>
        /// Simple Backward caruesel from end value to start value with step 1.
        /// Use 'CanGo' property in while cycle to take 'Next()' value.
        /// </summary>
        /// <param name="backward">Use 'true' value to run it backward</param>
        /// <param name="start">Last value</param>
        /// <param name="end">First value</param>
        public Carusel(bool backward, int start, int end )
        {
            this.Start = start;
            lastValue = end;
            this.End = end;
            this.CanGo = true;
            this.Backward = backward;
        }

        /// <summary>
        /// Simple Infinite caruesel from start value to end value with step 1.
        /// Use it inside any cycle to control how many values you need.
        /// </summary>
        /// <param name="start">First value</param>
        /// <param name="end">Last value</param>
        /// <param name="infinite">use 'true' value to get infinite cycle</param>
        public Carusel(int start, int end, bool infinite)
        {
            this.Start = start;
            lastValue = start;
            this.End = end;
            this.Infinite = infinite;
        }

        /// <summary>
        ///  Simple Backward Infinite caruesel from end value to start value with step 1.
        /// Use it inside any cycle to control how many values you need.
        /// </summary>
        /// <param name="backward">Use 'true' value to run it backwards</param>
        /// <param name="start">Last value</param>
        /// <param name="end">First value</param>
        /// <param name="infinite">Use 'true' value to make it infinite</param>
        public Carusel(bool backward, int start, int end, bool infinite)
        {
            this.Start = start;
            lastValue = end;
            this.End = end;
            this.Infinite = infinite;
            this.Backward = backward;
        }
        public int Next()
        {
            // infinite
            if (Infinite)
            {
                if (Backward)
                {
                    if (lastValue < Start)
                    {
                        lastValue = End;
                    }
                    return lastValue--;
                }
                else
                {
                    if (lastValue > End)
                    {
                        lastValue = Start;
                    }
                    return lastValue++;
                }

                    
            }
            // not infinite
            else
            {

                if (Backward)
                {
                    if (lastValue == Start) this.CanGo = false;

                    return lastValue--;
                }
                else
                {
                    if (lastValue == End) this.CanGo = false;

                    return lastValue++;
                }

                


            }

        }

        

    }
}
