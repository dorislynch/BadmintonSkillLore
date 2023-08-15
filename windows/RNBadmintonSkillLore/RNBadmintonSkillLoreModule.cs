using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Badminton.Skill.Lore.RNBadmintonSkillLore
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNBadmintonSkillLoreModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNBadmintonSkillLoreModule"/>.
        /// </summary>
        internal RNBadmintonSkillLoreModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNBadmintonSkillLore";
            }
        }
    }
}
