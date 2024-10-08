using ConnectorLib.SimpleTCP;
using CrowdControl.Common;
using ConnectorType = CrowdControl.Common.ConnectorType;

namespace CrowdControl.Games.Packs.GuiltyGearStrive;

public class GuiltyGearStrive : SimpleTCPPack<SimpleTCPServerConnector>
{
    public override string Host => "127.0.0.1";

    public override ushort Port => 33940;

    public override ISimpleTCPPack.MessageFormat MessageFormat => ISimpleTCPPack.MessageFormat.CrowdControlLegacy;

    public override ISimpleTCPPack.QuantityFormat QuantityFormat => ISimpleTCPPack.QuantityFormat.ParameterAndField;

    public GuiltyGearStrive(UserRecord player, Func<CrowdControlBlock, bool> responseHandler, Action<object> statusUpdateHandler) : base(player, responseHandler, statusUpdateHandler) { }

    public override Game Game { get; } = new("GUILTY GEAR -STRIVE-", "GuiltyGearStrive", "PC", ConnectorType.SimpleTCPServerConnector);

    public override EffectList Effects => new List<Effect>
    {
        // Controls
        new("Disallow Punch Button", "NoPunchButton") { Category = "Controls", Duration = 10, Price = 6, Description = "Have fun getting out of pressure without punches." },
        new("Disallow Kick Button", "NoKickButton") { Category = "Controls", Duration = 10, Price = 6, Description = "Your legs are now destroyed." },
        new("Disallow Slash Button", "NoSlashButton") { Category = "Controls", Duration = 10, Price = 8, Description = "Combos are about to get a whole lot worse." },
        new("Disallow Heavy Slash Button", "NoHeavyButton") { Category = "Controls", Duration = 10, Price = 10, Description = "Damage: gone." },
        new("Disallow Dust Button", "NoDustButton") { Category = "Controls", Duration = 10, Price = 12, Description = "YOU HAD BURST!!!" },
        new("Disallow Attacks", "DisallowAttacks") { Category = "Controls", Duration = 10, Price = 15, Description = "I don't think you'll get far in a fighting game being a pacifist." },
        new("Reverse Controls", "ReverseControls") { Category = "Controls", Duration = 10, Price = 12, Description = "Now do the combo facing left." },
        new("Random Inputs", "RandomInputs") { Category = "Controls", Duration = 10, Price = 15, Description = "Press random buttons on the controller for the duration. Maybe it'll help (spoiler: probably not)." },

        // Moves
        new("Taunt", "Taunt") { Category = "Moves", Price = 3, Description = "You have no control. Surrender." },
        new("Wild Assault", "WildAssult") { Category = "Moves", Price = 6, Description = "Blitz Attack, is that you?" },
        new("Deflect Shield", "DeflectShield") { Category = "Moves", Price = 6, Description = "Brace for a counter hit." },
        new("236P", "Spe236p") { Category = "Moves", Price = 3, Description = "Girlfriend!" },
        new("236K", "Spe236k") { Category = "Moves", Price = 3, Description = "Scum dipper will get you killed." },
        new("236S", "Spe236s") { Category = "Moves", Price = 3, Description = "What is this, Street Fighter 2?" },
        new("236H", "Spe236h") { Category = "Moves", Price = 3, Description = "Chipp players beware. You're in for a world of pain." },
        new("214P", "Spe214p") { Category = "Moves", Price = 3, Description = "Who wants to play some beach ball?" },
        new("214K", "Spe214k") { Category = "Moves", Price = 3, Description = "What do you mean it's not Greed Sever?" },
        new("214S", "Spe214s") { Category = "Moves", Price = 3, Description = "I wish it was still called GROUND VIPER NIGHT RAID VORTEX." },
        new("214H", "Spe214h") { Category = "Moves", Price = 3, Description = "This is just Naoto Kurogane but easy." },
        new("623P", "Spe623p") { Category = "Moves", Price = 3, Description = "They should've kept the EWGF." },
        new("623K", "Spe623k") { Category = "Moves", Price = 3, Description = "Run up Wild Throw. You know you want to." },
        new("623S", "Spe623s") { Category = "Moves", Price = 3, Description = "SHORYUKEN!" },
        new("623H", "Spe623h") { Category = "Moves", Price = 3, Description = "This dragon punch isn't even invulnerable." },
        new("41236K", "Spe41236k") { Category = "Moves", Price = 3, Description = "Hook, line, and sinker." },
        new("41236H", "Spe41236h") { Category = "Moves", Price = 3, Description = "Why is Fafnir +11 now." },
        new("63214P", "Spe63214p") { Category = "Moves", Price = 3, Description = "Could've just keygrabbed." },
        new("63214S", "Spe63214s") { Category = "Moves", Price = 3, Description = "Chipp is the true grappler." },
        new("[4]6S", "Spe46s") { Category = "Moves", Price = 3, Description = "Zoning time." },
        new("[4]6H", "Spe46h") { Category = "Moves", Price = 3, Description = "TOTSUGEKI. TOTSUGEKI. TOTSUGEKI." },
        new("[2]8S", "Spe28s") { Category = "Moves", Price = 3, Description = "Okay Guile, calm down." },
        new("[2]8H", "Spe28h") { Category = "Moves", Price = 3, Description = "Is it really a Flash Kick if it isn't invulnerable?" },
        new("2369H", "Spe2369h") { Category = "Moves", Price = 3, Description = "Let's see if you can do a bomber loop." },
        new("22P", "Spe22p") { Category = "Moves", Price = 3, Description = "Coward. Use your resources to recover mana." },
        new("22K", "Spe22k") { Category = "Moves", Price = 3, Description = "Just Gold Burst to get that meter back." },
        new("22S", "Spe22s") { Category = "Moves", Price = 3, Description = "HP is just another resource." },
        new("22H", "Spe22h") { Category = "Moves", Price = 3, Description = "Invite Hell? To where?" },
        new("Behemoth Typhoon (Random)", "BehemothTyphoon") { Category = "Moves", Price = 3, Description = "There's too many Behemoth Typhoons to choose." },
        new("632146P", "Spe631246p") { Category = "Moves", Price = 6, Description = "Casually approach child." },
        new("632146K", "Spe632146k") { Category = "Moves", Price = 6, Description = "Bug super." },
        new("632146S", "Spe632146s") { Category = "Moves", Price = 6, Description = "Sun Void is a raw name, I have to admit." },
        new("632146H", "Spe632146h") { Category = "Moves", Price = 6, Description = "Raw super always works." },
        new("236236P", "Spe236236p") { Category = "Moves", Price = 6, Description = "The otter is styling on you." },
        new("236236K", "Spe236236k") { Category = "Moves", Price = 6, Description = "You wish you were Mortobato." },
        new("236236S", "Spe236236s") { Category = "Moves", Price = 6, Description = "WHALEEEEEEEEEEEEEE" },
        new("236236H", "Spe236236h") { Category = "Moves", Price = 6, Description = "The ultimate Chipp-killer." },
        new("236236236P", "Spe236236236p") { Category = "Moves", Price = 6, Description = "Utter chaos. Not the happy kind." },
        new("214214H", "Spe214214h") { Category = "Moves", Price = 6, Description = "Dragon Install to death is a true combo." },
        new("1080P", "Spe1080p") { Category = "Moves", Price = 6, Description = "Goldlewis works for the government, yet he says \"Down With The System\". Curious." },
        new("Burst", "Burst") { Category = "Moves", Price = 6, Description = "California Burst." },
        new("RomanCancel", "RomanCancel") { Category = "Moves", Price = 6, Description = "Romantic!" },
    };
}