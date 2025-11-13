.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final blacklist TRANSACTION_addApeRule:I = 0x72

.field static final blacklist TRANSACTION_addChain:I = 0x57

.field static final greylist-max-o TRANSACTION_addInterfaceToLocalNetwork:I = 0x37

.field static final blacklist TRANSACTION_addIpAcceptRule:I = 0x63

.field static final blacklist TRANSACTION_addLegacyRoute:I = 0x87

.field static final blacklist TRANSACTION_addMptcpLink:I = 0x55

.field static final blacklist TRANSACTION_addOrRemoveSystemAppFromDataSaverWhitelist:I = 0x40

.field static final blacklist TRANSACTION_addPortFwdRules:I = 0x4b

.field static final greylist-max-o TRANSACTION_addRoute:I = 0xd

.field static final blacklist TRANSACTION_addSocksRule:I = 0x59

.field static final blacklist TRANSACTION_addSocksSkipRule:I = 0x5d

.field static final blacklist TRANSACTION_addSocksSkipRuleProto:I = 0x5f

.field static final blacklist TRANSACTION_addSourcePortAcceptRule:I = 0x6b

.field static final blacklist TRANSACTION_addSourceRoute:I = 0x69

.field static final blacklist TRANSACTION_addUidSocksRule:I = 0x5b

.field static final blacklist TRANSACTION_addUidToChain:I = 0x61

.field static final greylist-max-o TRANSACTION_allowProtect:I = 0x35

.field static final blacklist TRANSACTION_buildFirewall:I = 0x80

.field static final blacklist TRANSACTION_cleanAllBlock:I = 0x7a

.field static final blacklist TRANSACTION_cleanBlockPorts:I = 0x7d

.field static final blacklist TRANSACTION_clearEbpfMap:I = 0x44

.field static final greylist-max-o TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final blacklist TRANSACTION_closeSocketsForFreecess:I = 0x32

.field static final blacklist TRANSACTION_closeSocketsForUid:I = 0x34

.field static final blacklist TRANSACTION_closeSocketsForUids:I = 0x33

.field static final blacklist TRANSACTION_createNetworkGuardChain:I = 0x4d

.field static final blacklist TRANSACTION_delIpAcceptRule:I = 0x64

.field static final blacklist TRANSACTION_delSourcePortAcceptRule:I = 0x6c

.field static final blacklist TRANSACTION_delSourceRoute:I = 0x6a

.field static final blacklist TRANSACTION_deleteNetworkGuardChain:I = 0x4e

.field static final blacklist TRANSACTION_deleteNetworkGuardWhiteListRule:I = 0x51

.field static final greylist-max-o TRANSACTION_denyProtect:I = 0x36

.field static final blacklist TRANSACTION_disableEpdg:I = 0x75

.field static final greylist-max-o TRANSACTION_disableIpv6:I = 0xa

.field static final blacklist TRANSACTION_disableMptcp:I = 0x68

.field static final greylist-max-o TRANSACTION_disableNat:I = 0x1d

.field static final blacklist TRANSACTION_disableNetworkGuard:I = 0x50

.field static final blacklist TRANSACTION_enableEpdg:I = 0x74

.field static final greylist-max-o TRANSACTION_enableIpv6:I = 0xb

.field static final blacklist TRANSACTION_enableKnoxVpnFlagForTether:I = 0x47

.field static final blacklist TRANSACTION_enableMptcp:I = 0x67

.field static final greylist-max-o TRANSACTION_enableNat:I = 0x1c

.field static final blacklist TRANSACTION_enableNetworkGuard:I = 0x4f

.field static final greylist-max-o TRANSACTION_getDnsForwarders:I = 0x19

.field static final greylist-max-o TRANSACTION_getInterfaceConfig:I = 0x4

.field static final greylist-max-o TRANSACTION_getIpForwardingEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_getNetworkStatsTethering:I = 0x21

.field static final blacklist TRANSACTION_getNetworkStatsVideoCall:I = 0x3d

.field static final greylist-max-o TRANSACTION_isBandwidthControlEnabled:I = 0x2b

.field static final greylist-max-o TRANSACTION_isFirewallEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_isNetworkRestricted:I = 0x3a

.field static final greylist-max-o TRANSACTION_isTetheringStarted:I = 0x15

.field static final greylist-max-o TRANSACTION_listInterfaces:I = 0x3

.field static final greylist-max-o TRANSACTION_listTetheredInterfaces:I = 0x18

.field static final blacklist TRANSACTION_prioritizeApp:I = 0x71

.field static final blacklist TRANSACTION_registerNetdTetherEventListener:I = 0x48

.field static final greylist-max-o TRANSACTION_registerObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_registerTetheringStatsProvider:I = 0x1e

.field static final blacklist TRANSACTION_removeChain:I = 0x58

.field static final greylist-max-o TRANSACTION_removeInterfaceAlert:I = 0x25

.field static final greylist-max-o TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x38

.field static final greylist-max-o TRANSACTION_removeInterfaceQuota:I = 0x23

.field static final blacklist TRANSACTION_removeLegacyRoute:I = 0x88

.field static final blacklist TRANSACTION_removeMptcpLink:I = 0x56

.field static final greylist-max-o TRANSACTION_removeRoute:I = 0xe

.field static final greylist-max-o TRANSACTION_removeRoutesFromLocalNetwork:I = 0x39

.field static final blacklist TRANSACTION_removeSocksRule:I = 0x5a

.field static final blacklist TRANSACTION_removeSocksSkipRule:I = 0x5e

.field static final blacklist TRANSACTION_removeSocksSkipRuleProto:I = 0x60

.field static final blacklist TRANSACTION_removeUidFromChain:I = 0x62

.field static final blacklist TRANSACTION_removeUidSocksRule:I = 0x5c

.field static final blacklist TRANSACTION_replaceApeRule:I = 0x73

.field static final blacklist TRANSACTION_runKnoxFirewallRulesCommand:I = 0x45

.field static final blacklist TRANSACTION_runKnoxRulesCommand:I = 0x46

.field static final blacklist TRANSACTION_setAllowListIPs:I = 0x79

.field static final blacklist TRANSACTION_setBlockAllDNSPackets:I = 0x77

.field static final blacklist TRANSACTION_setBlockAllPackets:I = 0x7b

.field static final blacklist TRANSACTION_setBlockListIPs:I = 0x78

.field static final blacklist TRANSACTION_setBlockPorts:I = 0x7c

.field static final greylist-max-o TRANSACTION_setDataSaverModeEnabled:I = 0x29

.field static final blacklist TRANSACTION_setDestinationBasedMarkRule:I = 0x6f

.field static final blacklist TRANSACTION_setDnsForwardersForKnoxVpn:I = 0x3e

.field static final blacklist TRANSACTION_setEpdgInterfaceDropRule:I = 0x76

.field static final greylist-max-o TRANSACTION_setFirewallChainEnabled:I = 0x31

.field static final greylist-max-o TRANSACTION_setFirewallEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setFirewallInterfaceRule:I = 0x2e

.field static final blacklist TRANSACTION_setFirewallRuleMobileData:I = 0x82

.field static final blacklist TRANSACTION_setFirewallRuleWifi:I = 0x81

.field static final greylist-max-o TRANSACTION_setFirewallUidRule:I = 0x2f

.field static final greylist-max-o TRANSACTION_setFirewallUidRules:I = 0x30

.field static final greylist-max-o TRANSACTION_setGlobalAlert:I = 0x26

.field static final greylist-max-o TRANSACTION_setIPv6AddrGenMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInterfaceAlert:I = 0x24

.field static final greylist-max-o TRANSACTION_setInterfaceConfig:I = 0x5

.field static final greylist-max-o TRANSACTION_setInterfaceDown:I = 0x7

.field static final greylist-max-o TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final greylist-max-o TRANSACTION_setInterfaceQuota:I = 0x22

.field static final greylist-max-o TRANSACTION_setInterfaceUp:I = 0x8

.field static final greylist-max-o TRANSACTION_setIpForwardingEnabled:I = 0x11

.field static final blacklist TRANSACTION_setKnoxGuardExemptRule:I = 0x4c

.field static final blacklist TRANSACTION_setKnoxVpn:I = 0x4a

.field static final blacklist TRANSACTION_setMptcpMtuValue:I = 0x66

.field static final blacklist TRANSACTION_setNetworkGuardProtocolAcceptRule:I = 0x54

.field static final blacklist TRANSACTION_setNetworkGuardUidRangeAcceptRule:I = 0x52

.field static final blacklist TRANSACTION_setNetworkGuardUidRule:I = 0x53

.field static final blacklist TRANSACTION_setNetworkInfo:I = 0x3f

.field static final blacklist TRANSACTION_setPrivateIpRoute:I = 0x6e

.field static final blacklist TRANSACTION_setQboxUid:I = 0x85

.field static final blacklist TRANSACTION_setTcpBufferSize:I = 0x65

.field static final blacklist TRANSACTION_setUIDRoute:I = 0x70

.field static final greylist-max-o TRANSACTION_setUidCleartextNetworkPolicy:I = 0x2a

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkAllowlist:I = 0x28

.field static final blacklist TRANSACTION_setUidOnMeteredNetworkDenylist:I = 0x27

.field static final blacklist TRANSACTION_setUrlFirewallRuleMobileData:I = 0x7e

.field static final blacklist TRANSACTION_setUrlFirewallRuleWifi:I = 0x7f

.field static final greylist-max-o TRANSACTION_shutdown:I = 0xf

.field static final blacklist TRANSACTION_spegRestrictNetworkConnection:I = 0x86

.field static final greylist-max-o TRANSACTION_startInterfaceForwarding:I = 0x1a

.field static final blacklist TRANSACTION_startNetworkStatsOnPorts:I = 0x3b

.field static final blacklist TRANSACTION_startQbox:I = 0x83

.field static final greylist-max-o TRANSACTION_startTethering:I = 0x12

.field static final blacklist TRANSACTION_startTetheringWithConfiguration:I = 0x13

.field static final greylist-max-o TRANSACTION_stopInterfaceForwarding:I = 0x1b

.field static final blacklist TRANSACTION_stopNetworkStatsOnPorts:I = 0x3c

.field static final blacklist TRANSACTION_stopQbox:I = 0x84

.field static final greylist-max-o TRANSACTION_stopTethering:I = 0x14

.field static final greylist-max-o TRANSACTION_tetherInterface:I = 0x16

.field static final greylist-max-o TRANSACTION_tetherLimitReached:I = 0x20

.field static final blacklist TRANSACTION_unregisterNetdTetherEventListener:I = 0x49

.field static final greylist-max-o TRANSACTION_unregisterObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterTetheringStatsProvider:I = 0x1f

.field static final greylist-max-o TRANSACTION_untetherInterface:I = 0x17

.field static final blacklist TRANSACTION_updateInputFilterAppWideRules:I = 0x43

.field static final blacklist TRANSACTION_updateInputFilterExemptRules:I = 0x41

.field static final blacklist TRANSACTION_updateInputFilterUserWideRules:I = 0x42

.field static final blacklist TRANSACTION_updateSourceRule:I = 0x6d


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 572
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 573
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 581
    if-nez p0, :cond_0

    .line 582
    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 585
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 586
    move-object v1, v0

    check-cast v1, Landroid/os/INetworkManagementService;

    return-object v1

    .line 588
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 597
    packed-switch p0, :pswitch_data_0

    .line 1145
    const/4 v0, 0x0

    return-object v0

    .line 1141
    :pswitch_0
    const-string/jumbo v0, "removeLegacyRoute"

    return-object v0

    .line 1137
    :pswitch_1
    const-string v0, "addLegacyRoute"

    return-object v0

    .line 1133
    :pswitch_2
    const-string/jumbo v0, "spegRestrictNetworkConnection"

    return-object v0

    .line 1129
    :pswitch_3
    const-string/jumbo v0, "setQboxUid"

    return-object v0

    .line 1125
    :pswitch_4
    const-string/jumbo v0, "stopQbox"

    return-object v0

    .line 1121
    :pswitch_5
    const-string/jumbo v0, "startQbox"

    return-object v0

    .line 1117
    :pswitch_6
    const-string/jumbo v0, "setFirewallRuleMobileData"

    return-object v0

    .line 1113
    :pswitch_7
    const-string/jumbo v0, "setFirewallRuleWifi"

    return-object v0

    .line 1109
    :pswitch_8
    const-string v0, "buildFirewall"

    return-object v0

    .line 1105
    :pswitch_9
    const-string/jumbo v0, "setUrlFirewallRuleWifi"

    return-object v0

    .line 1101
    :pswitch_a
    const-string/jumbo v0, "setUrlFirewallRuleMobileData"

    return-object v0

    .line 1097
    :pswitch_b
    const-string v0, "cleanBlockPorts"

    return-object v0

    .line 1093
    :pswitch_c
    const-string/jumbo v0, "setBlockPorts"

    return-object v0

    .line 1089
    :pswitch_d
    const-string/jumbo v0, "setBlockAllPackets"

    return-object v0

    .line 1085
    :pswitch_e
    const-string v0, "cleanAllBlock"

    return-object v0

    .line 1081
    :pswitch_f
    const-string/jumbo v0, "setAllowListIPs"

    return-object v0

    .line 1077
    :pswitch_10
    const-string/jumbo v0, "setBlockListIPs"

    return-object v0

    .line 1073
    :pswitch_11
    const-string/jumbo v0, "setBlockAllDNSPackets"

    return-object v0

    .line 1069
    :pswitch_12
    const-string/jumbo v0, "setEpdgInterfaceDropRule"

    return-object v0

    .line 1065
    :pswitch_13
    const-string v0, "disableEpdg"

    return-object v0

    .line 1061
    :pswitch_14
    const-string v0, "enableEpdg"

    return-object v0

    .line 1057
    :pswitch_15
    const-string/jumbo v0, "replaceApeRule"

    return-object v0

    .line 1053
    :pswitch_16
    const-string v0, "addApeRule"

    return-object v0

    .line 1049
    :pswitch_17
    const-string/jumbo v0, "prioritizeApp"

    return-object v0

    .line 1045
    :pswitch_18
    const-string/jumbo v0, "setUIDRoute"

    return-object v0

    .line 1041
    :pswitch_19
    const-string/jumbo v0, "setDestinationBasedMarkRule"

    return-object v0

    .line 1037
    :pswitch_1a
    const-string/jumbo v0, "setPrivateIpRoute"

    return-object v0

    .line 1033
    :pswitch_1b
    const-string/jumbo v0, "updateSourceRule"

    return-object v0

    .line 1029
    :pswitch_1c
    const-string v0, "delSourcePortAcceptRule"

    return-object v0

    .line 1025
    :pswitch_1d
    const-string v0, "addSourcePortAcceptRule"

    return-object v0

    .line 1021
    :pswitch_1e
    const-string v0, "delSourceRoute"

    return-object v0

    .line 1017
    :pswitch_1f
    const-string v0, "addSourceRoute"

    return-object v0

    .line 1013
    :pswitch_20
    const-string v0, "disableMptcp"

    return-object v0

    .line 1009
    :pswitch_21
    const-string v0, "enableMptcp"

    return-object v0

    .line 1005
    :pswitch_22
    const-string/jumbo v0, "setMptcpMtuValue"

    return-object v0

    .line 1001
    :pswitch_23
    const-string/jumbo v0, "setTcpBufferSize"

    return-object v0

    .line 997
    :pswitch_24
    const-string v0, "delIpAcceptRule"

    return-object v0

    .line 993
    :pswitch_25
    const-string v0, "addIpAcceptRule"

    return-object v0

    .line 989
    :pswitch_26
    const-string/jumbo v0, "removeUidFromChain"

    return-object v0

    .line 985
    :pswitch_27
    const-string v0, "addUidToChain"

    return-object v0

    .line 981
    :pswitch_28
    const-string/jumbo v0, "removeSocksSkipRuleProto"

    return-object v0

    .line 977
    :pswitch_29
    const-string v0, "addSocksSkipRuleProto"

    return-object v0

    .line 973
    :pswitch_2a
    const-string/jumbo v0, "removeSocksSkipRule"

    return-object v0

    .line 969
    :pswitch_2b
    const-string v0, "addSocksSkipRule"

    return-object v0

    .line 965
    :pswitch_2c
    const-string/jumbo v0, "removeUidSocksRule"

    return-object v0

    .line 961
    :pswitch_2d
    const-string v0, "addUidSocksRule"

    return-object v0

    .line 957
    :pswitch_2e
    const-string/jumbo v0, "removeSocksRule"

    return-object v0

    .line 953
    :pswitch_2f
    const-string v0, "addSocksRule"

    return-object v0

    .line 949
    :pswitch_30
    const-string/jumbo v0, "removeChain"

    return-object v0

    .line 945
    :pswitch_31
    const-string v0, "addChain"

    return-object v0

    .line 941
    :pswitch_32
    const-string/jumbo v0, "removeMptcpLink"

    return-object v0

    .line 937
    :pswitch_33
    const-string v0, "addMptcpLink"

    return-object v0

    .line 933
    :pswitch_34
    const-string/jumbo v0, "setNetworkGuardProtocolAcceptRule"

    return-object v0

    .line 929
    :pswitch_35
    const-string/jumbo v0, "setNetworkGuardUidRule"

    return-object v0

    .line 925
    :pswitch_36
    const-string/jumbo v0, "setNetworkGuardUidRangeAcceptRule"

    return-object v0

    .line 921
    :pswitch_37
    const-string v0, "deleteNetworkGuardWhiteListRule"

    return-object v0

    .line 917
    :pswitch_38
    const-string v0, "disableNetworkGuard"

    return-object v0

    .line 913
    :pswitch_39
    const-string v0, "enableNetworkGuard"

    return-object v0

    .line 909
    :pswitch_3a
    const-string v0, "deleteNetworkGuardChain"

    return-object v0

    .line 905
    :pswitch_3b
    const-string v0, "createNetworkGuardChain"

    return-object v0

    .line 901
    :pswitch_3c
    const-string/jumbo v0, "setKnoxGuardExemptRule"

    return-object v0

    .line 897
    :pswitch_3d
    const-string v0, "addPortFwdRules"

    return-object v0

    .line 893
    :pswitch_3e
    const-string/jumbo v0, "setKnoxVpn"

    return-object v0

    .line 889
    :pswitch_3f
    const-string/jumbo v0, "unregisterNetdTetherEventListener"

    return-object v0

    .line 885
    :pswitch_40
    const-string/jumbo v0, "registerNetdTetherEventListener"

    return-object v0

    .line 881
    :pswitch_41
    const-string v0, "enableKnoxVpnFlagForTether"

    return-object v0

    .line 877
    :pswitch_42
    const-string/jumbo v0, "runKnoxRulesCommand"

    return-object v0

    .line 873
    :pswitch_43
    const-string/jumbo v0, "runKnoxFirewallRulesCommand"

    return-object v0

    .line 869
    :pswitch_44
    const-string v0, "clearEbpfMap"

    return-object v0

    .line 865
    :pswitch_45
    const-string/jumbo v0, "updateInputFilterAppWideRules"

    return-object v0

    .line 861
    :pswitch_46
    const-string/jumbo v0, "updateInputFilterUserWideRules"

    return-object v0

    .line 857
    :pswitch_47
    const-string/jumbo v0, "updateInputFilterExemptRules"

    return-object v0

    .line 853
    :pswitch_48
    const-string v0, "addOrRemoveSystemAppFromDataSaverWhitelist"

    return-object v0

    .line 849
    :pswitch_49
    const-string/jumbo v0, "setNetworkInfo"

    return-object v0

    .line 845
    :pswitch_4a
    const-string/jumbo v0, "setDnsForwardersForKnoxVpn"

    return-object v0

    .line 841
    :pswitch_4b
    const-string/jumbo v0, "getNetworkStatsVideoCall"

    return-object v0

    .line 837
    :pswitch_4c
    const-string/jumbo v0, "stopNetworkStatsOnPorts"

    return-object v0

    .line 833
    :pswitch_4d
    const-string/jumbo v0, "startNetworkStatsOnPorts"

    return-object v0

    .line 829
    :pswitch_4e
    const-string/jumbo v0, "isNetworkRestricted"

    return-object v0

    .line 825
    :pswitch_4f
    const-string/jumbo v0, "removeRoutesFromLocalNetwork"

    return-object v0

    .line 821
    :pswitch_50
    const-string/jumbo v0, "removeInterfaceFromLocalNetwork"

    return-object v0

    .line 817
    :pswitch_51
    const-string v0, "addInterfaceToLocalNetwork"

    return-object v0

    .line 813
    :pswitch_52
    const-string v0, "denyProtect"

    return-object v0

    .line 809
    :pswitch_53
    const-string v0, "allowProtect"

    return-object v0

    .line 805
    :pswitch_54
    const-string v0, "closeSocketsForUid"

    return-object v0

    .line 801
    :pswitch_55
    const-string v0, "closeSocketsForUids"

    return-object v0

    .line 797
    :pswitch_56
    const-string v0, "closeSocketsForFreecess"

    return-object v0

    .line 793
    :pswitch_57
    const-string/jumbo v0, "setFirewallChainEnabled"

    return-object v0

    .line 789
    :pswitch_58
    const-string/jumbo v0, "setFirewallUidRules"

    return-object v0

    .line 785
    :pswitch_59
    const-string/jumbo v0, "setFirewallUidRule"

    return-object v0

    .line 781
    :pswitch_5a
    const-string/jumbo v0, "setFirewallInterfaceRule"

    return-object v0

    .line 777
    :pswitch_5b
    const-string/jumbo v0, "isFirewallEnabled"

    return-object v0

    .line 773
    :pswitch_5c
    const-string/jumbo v0, "setFirewallEnabled"

    return-object v0

    .line 769
    :pswitch_5d
    const-string/jumbo v0, "isBandwidthControlEnabled"

    return-object v0

    .line 765
    :pswitch_5e
    const-string/jumbo v0, "setUidCleartextNetworkPolicy"

    return-object v0

    .line 761
    :pswitch_5f
    const-string/jumbo v0, "setDataSaverModeEnabled"

    return-object v0

    .line 757
    :pswitch_60
    const-string/jumbo v0, "setUidOnMeteredNetworkAllowlist"

    return-object v0

    .line 753
    :pswitch_61
    const-string/jumbo v0, "setUidOnMeteredNetworkDenylist"

    return-object v0

    .line 749
    :pswitch_62
    const-string/jumbo v0, "setGlobalAlert"

    return-object v0

    .line 745
    :pswitch_63
    const-string/jumbo v0, "removeInterfaceAlert"

    return-object v0

    .line 741
    :pswitch_64
    const-string/jumbo v0, "setInterfaceAlert"

    return-object v0

    .line 737
    :pswitch_65
    const-string/jumbo v0, "removeInterfaceQuota"

    return-object v0

    .line 733
    :pswitch_66
    const-string/jumbo v0, "setInterfaceQuota"

    return-object v0

    .line 729
    :pswitch_67
    const-string/jumbo v0, "getNetworkStatsTethering"

    return-object v0

    .line 725
    :pswitch_68
    const-string/jumbo v0, "tetherLimitReached"

    return-object v0

    .line 721
    :pswitch_69
    const-string/jumbo v0, "unregisterTetheringStatsProvider"

    return-object v0

    .line 717
    :pswitch_6a
    const-string/jumbo v0, "registerTetheringStatsProvider"

    return-object v0

    .line 713
    :pswitch_6b
    const-string v0, "disableNat"

    return-object v0

    .line 709
    :pswitch_6c
    const-string v0, "enableNat"

    return-object v0

    .line 705
    :pswitch_6d
    const-string/jumbo v0, "stopInterfaceForwarding"

    return-object v0

    .line 701
    :pswitch_6e
    const-string/jumbo v0, "startInterfaceForwarding"

    return-object v0

    .line 697
    :pswitch_6f
    const-string v0, "getDnsForwarders"

    return-object v0

    .line 693
    :pswitch_70
    const-string/jumbo v0, "listTetheredInterfaces"

    return-object v0

    .line 689
    :pswitch_71
    const-string/jumbo v0, "untetherInterface"

    return-object v0

    .line 685
    :pswitch_72
    const-string/jumbo v0, "tetherInterface"

    return-object v0

    .line 681
    :pswitch_73
    const-string/jumbo v0, "isTetheringStarted"

    return-object v0

    .line 677
    :pswitch_74
    const-string/jumbo v0, "stopTethering"

    return-object v0

    .line 673
    :pswitch_75
    const-string/jumbo v0, "startTetheringWithConfiguration"

    return-object v0

    .line 669
    :pswitch_76
    const-string/jumbo v0, "startTethering"

    return-object v0

    .line 665
    :pswitch_77
    const-string/jumbo v0, "setIpForwardingEnabled"

    return-object v0

    .line 661
    :pswitch_78
    const-string/jumbo v0, "getIpForwardingEnabled"

    return-object v0

    .line 657
    :pswitch_79
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 653
    :pswitch_7a
    const-string/jumbo v0, "removeRoute"

    return-object v0

    .line 649
    :pswitch_7b
    const-string v0, "addRoute"

    return-object v0

    .line 645
    :pswitch_7c
    const-string/jumbo v0, "setIPv6AddrGenMode"

    return-object v0

    .line 641
    :pswitch_7d
    const-string v0, "enableIpv6"

    return-object v0

    .line 637
    :pswitch_7e
    const-string v0, "disableIpv6"

    return-object v0

    .line 633
    :pswitch_7f
    const-string/jumbo v0, "setInterfaceIpv6PrivacyExtensions"

    return-object v0

    .line 629
    :pswitch_80
    const-string/jumbo v0, "setInterfaceUp"

    return-object v0

    .line 625
    :pswitch_81
    const-string/jumbo v0, "setInterfaceDown"

    return-object v0

    .line 621
    :pswitch_82
    const-string v0, "clearInterfaceAddresses"

    return-object v0

    .line 617
    :pswitch_83
    const-string/jumbo v0, "setInterfaceConfig"

    return-object v0

    .line 613
    :pswitch_84
    const-string/jumbo v0, "getInterfaceConfig"

    return-object v0

    .line 609
    :pswitch_85
    const-string/jumbo v0, "listInterfaces"

    return-object v0

    .line 605
    :pswitch_86
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 601
    :pswitch_87
    const-string/jumbo v0, "registerObserver"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 592
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 5127
    const/16 v0, 0x87

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1152
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.INetworkManagementService"

    .line 1157
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 1158
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 1168
    packed-switch v8, :pswitch_data_1

    .line 2630
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1164
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1165
    return v12

    .line 2614
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2616
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2618
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2620
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2622
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2623
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2624
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2626
    goto/16 :goto_0

    .line 2597
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2599
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2601
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2603
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2605
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2606
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2607
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    goto/16 :goto_0

    .line 2586
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2588
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2589
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2590
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->spegRestrictNetworkConnection(IZ)V

    .line 2591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    goto/16 :goto_0

    .line 2575
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2577
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2578
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2579
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setQboxUid(IZ)V

    .line 2580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    goto/16 :goto_0

    .line 2568
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopQbox()V

    .line 2569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2570
    goto/16 :goto_0

    .line 2560
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2562
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->startQbox(Ljava/lang/String;)V

    .line 2563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    goto/16 :goto_0

    .line 2549
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2551
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2552
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2553
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleMobileData(IZ)V

    .line 2554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2555
    goto/16 :goto_0

    .line 2538
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2540
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2541
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2542
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleWifi(IZ)V

    .line 2543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2544
    goto/16 :goto_0

    .line 2531
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->buildFirewall()V

    .line 2532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2533
    goto/16 :goto_0

    .line 2519
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2521
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2523
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2524
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2525
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V

    .line 2526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2527
    goto/16 :goto_0

    .line 2506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2508
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2510
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2511
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2512
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 2513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    goto/16 :goto_0

    .line 2499
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->cleanBlockPorts()V

    .line 2500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    goto/16 :goto_0

    .line 2487
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2489
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2491
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2492
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2493
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V

    .line 2494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2495
    goto/16 :goto_0

    .line 2480
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->setBlockAllPackets()V

    .line 2481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2482
    goto/16 :goto_0

    .line 2474
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->cleanAllBlock()V

    .line 2475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    goto/16 :goto_0

    .line 2466
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2467
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2468
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setAllowListIPs(Ljava/lang/String;)V

    .line 2469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    goto/16 :goto_0

    .line 2457
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2459
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setBlockListIPs(Ljava/lang/String;)V

    .line 2460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2461
    goto/16 :goto_0

    .line 2448
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2449
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setBlockAllDNSPackets(Z)V

    .line 2451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    goto/16 :goto_0

    .line 2437
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2439
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2440
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    goto/16 :goto_0

    .line 2426
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2428
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2429
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2430
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2432
    goto/16 :goto_0

    .line 2413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2417
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2418
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2419
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2421
    goto/16 :goto_0

    .line 2399
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2401
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2403
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2404
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2405
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceApeRule(Ljava/lang/String;II)I

    move-result v3

    .line 2406
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2407
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2408
    goto/16 :goto_0

    .line 2385
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2387
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2389
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2390
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2391
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addApeRule(ZLjava/lang/String;I)I

    move-result v3

    .line 2392
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    goto/16 :goto_0

    .line 2373
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2375
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2376
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2377
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->prioritizeApp(ZI)I

    move-result v2

    .line 2378
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    goto/16 :goto_0

    .line 2356
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2358
    .local v6, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2360
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2362
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2364
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2365
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    goto/16 :goto_0

    .line 2339
    .end local v6    # "_arg0":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2341
    .restart local v6    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2343
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2345
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2347
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2348
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2349
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 2350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2351
    goto/16 :goto_0

    .line 2326
    .end local v6    # "_arg0":Z
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2328
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2330
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2331
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2332
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setPrivateIpRoute(ZLjava/lang/String;I)V

    .line 2333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2334
    goto/16 :goto_0

    .line 2313
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2315
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2317
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2319
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    goto/16 :goto_0

    .line 2300
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2304
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2305
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2306
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2308
    goto/16 :goto_0

    .line 2287
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2289
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2291
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2292
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2293
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    goto/16 :goto_0

    .line 2274
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2278
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2279
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2280
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    goto/16 :goto_0

    .line 2261
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2263
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2265
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2266
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2267
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2269
    goto/16 :goto_0

    .line 2254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableMptcp()V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    goto/16 :goto_0

    .line 2246
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2248
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableMptcp(Ljava/lang/String;)V

    .line 2249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    goto/16 :goto_0

    .line 2235
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2238
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setMptcpMtuValue(Ljava/lang/String;I)V

    .line 2240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    goto/16 :goto_0

    .line 2224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2226
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2227
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2228
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    goto/16 :goto_0

    .line 2211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2213
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2216
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2217
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    goto/16 :goto_0

    .line 2198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2202
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2203
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2204
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2206
    goto/16 :goto_0

    .line 2185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2189
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2190
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2191
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    goto/16 :goto_0

    .line 2172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2174
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2176
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2177
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    goto/16 :goto_0

    .line 2155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2157
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2159
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2161
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2163
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2164
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2165
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    goto/16 :goto_0

    .line 2138
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2140
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2142
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2144
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2146
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2147
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2148
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    goto/16 :goto_0

    .line 2125
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2129
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2130
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2131
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    goto/16 :goto_0

    .line 2112
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2116
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2117
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2118
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    goto/16 :goto_0

    .line 2093
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2095
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2097
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2099
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2101
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2103
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2104
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2105
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/INetworkManagementService$Stub;->removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    goto/16 :goto_0

    .line 2074
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2076
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2078
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2080
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2082
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2084
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2085
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2086
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/INetworkManagementService$Stub;->addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    goto/16 :goto_0

    .line 2057
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2059
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2061
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2063
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2065
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2066
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    goto/16 :goto_0

    .line 2040
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2042
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2044
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2046
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2048
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2049
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    goto/16 :goto_0

    .line 2029
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2031
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2032
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2033
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    goto/16 :goto_0

    .line 2018
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2020
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2021
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2022
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    goto/16 :goto_0

    .line 2009
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2010
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2011
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeMptcpLink(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    goto/16 :goto_0

    .line 2000
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2002
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->addMptcpLink(Ljava/lang/String;)V

    .line 2003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    goto/16 :goto_0

    .line 1991
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1992
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1993
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardProtocolAcceptRule(I)V

    .line 1994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    goto/16 :goto_0

    .line 1978
    .end local v0    # "_arg0":I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1982
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1983
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1984
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRule(IZZ)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    goto/16 :goto_0

    .line 1967
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1969
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1970
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1971
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRangeAcceptRule(II)V

    .line 1972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    goto/16 :goto_0

    .line 1960
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardWhiteListRule()V

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    goto/16 :goto_0

    .line 1954
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableNetworkGuard()V

    .line 1955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    goto/16 :goto_0

    .line 1946
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1947
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableNetworkGuard(Z)V

    .line 1949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    goto/16 :goto_0

    .line 1939
    .end local v0    # "_arg0":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardChain()V

    .line 1940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1941
    goto/16 :goto_0

    .line 1933
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->createNetworkGuardChain()V

    .line 1934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    goto/16 :goto_0

    .line 1921
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1923
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1926
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1927
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 1928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    goto/16 :goto_0

    .line 1904
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1906
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1908
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1910
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1912
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1913
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    goto/16 :goto_0

    .line 1893
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1895
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1896
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1897
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setKnoxVpn(IZ)V

    .line 1898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    goto/16 :goto_0

    .line 1886
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->unregisterNetdTetherEventListener()V

    .line 1887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    goto/16 :goto_0

    .line 1880
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->registerNetdTetherEventListener()V

    .line 1881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    goto/16 :goto_0

    .line 1872
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1873
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1874
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableKnoxVpnFlagForTether(Z)V

    .line 1875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    goto/16 :goto_0

    .line 1861
    .end local v0    # "_arg0":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1863
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1864
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1865
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->runKnoxRulesCommand(I[Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1867
    goto/16 :goto_0

    .line 1849
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1851
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1853
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1854
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1856
    goto/16 :goto_0

    .line 1840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1841
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1842
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->clearEbpfMap(I)V

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    goto/16 :goto_0

    .line 1827
    .end local v0    # "_arg0":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1829
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1831
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1832
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1833
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterAppWideRules([III)V

    .line 1834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    goto/16 :goto_0

    .line 1814
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1816
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1818
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1819
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1820
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterUserWideRules([III)V

    .line 1821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    goto/16 :goto_0

    .line 1803
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1805
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1806
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1807
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->updateInputFilterExemptRules(II)V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    goto/16 :goto_0

    .line 1792
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1794
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1795
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    goto/16 :goto_0

    .line 1779
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1781
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1783
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1784
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1785
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkInfo(IZI)V

    .line 1786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    goto/16 :goto_0

    .line 1768
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1771
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1772
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    goto/16 :goto_0

    .line 1754
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1758
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1759
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1760
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)J

    move-result-wide v3

    .line 1761
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1763
    goto/16 :goto_0

    .line 1741
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":J
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1743
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1745
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1746
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    goto/16 :goto_0

    .line 1728
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1730
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1732
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1733
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1734
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    goto/16 :goto_0

    .line 1718
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1719
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v1

    .line 1721
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1723
    goto/16 :goto_0

    .line 1708
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_50
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1709
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v1

    .line 1711
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    goto/16 :goto_0

    .line 1699
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v1    # "_result":I
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1700
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1701
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    goto/16 :goto_0

    .line 1688
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1691
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1692
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    goto/16 :goto_0

    .line 1679
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1680
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1681
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    goto/16 :goto_0

    .line 1670
    .end local v0    # "_arg0":I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1671
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1672
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    goto/16 :goto_0

    .line 1661
    .end local v0    # "_arg0":I
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1662
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForUid(I)V

    .line 1664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    goto/16 :goto_0

    .line 1652
    .end local v0    # "_arg0":I
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1653
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForUids([I)V

    .line 1655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    goto/16 :goto_0

    .line 1641
    .end local v0    # "_arg0":[I
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1643
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->closeSocketsForFreecess(ILjava/lang/String;)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    goto/16 :goto_0

    .line 1630
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1632
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1633
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1634
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 1635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    goto/16 :goto_0

    .line 1617
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1619
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1621
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1622
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1623
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    goto/16 :goto_0

    .line 1604
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1608
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1609
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1610
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    goto/16 :goto_0

    .line 1593
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1596
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 1598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    goto/16 :goto_0

    .line 1585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v0

    .line 1586
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1588
    goto/16 :goto_0

    .line 1577
    .end local v0    # "_result":Z
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1578
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    goto/16 :goto_0

    .line 1569
    .end local v0    # "_arg0":Z
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v0

    .line 1570
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1572
    goto/16 :goto_0

    .line 1559
    .end local v0    # "_result":Z
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1561
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1562
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 1564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1565
    goto/16 :goto_0

    .line 1549
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1550
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v1

    .line 1552
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1554
    goto/16 :goto_0

    .line 1538
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1540
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1541
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkAllowlist(IZ)V

    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    goto/16 :goto_0

    .line 1527
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1529
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1530
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setUidOnMeteredNetworkDenylist(IZ)V

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    goto/16 :goto_0

    .line 1518
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1519
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    goto/16 :goto_0

    .line 1509
    .end local v0    # "_arg0":J
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    goto/16 :goto_0

    .line 1498
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1501
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    goto/16 :goto_0

    .line 1489
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    goto/16 :goto_0

    .line 1478
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1481
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1482
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    goto/16 :goto_0

    .line 1468
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1469
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1471
    .local v1, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1473
    goto/16 :goto_0

    .line 1459
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/net/NetworkStats;
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1460
    .local v0, "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1461
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 1462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    goto/16 :goto_0

    .line 1450
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1451
    .restart local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    goto/16 :goto_0

    .line 1439
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v0

    .line 1441
    .restart local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1443
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    goto/16 :goto_0

    .line 1428
    .end local v0    # "_arg0":Landroid/net/ITetheringStatsProvider;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    goto/16 :goto_0

    .line 1417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    goto/16 :goto_0

    .line 1406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1408
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    goto/16 :goto_0

    .line 1395
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    goto/16 :goto_0

    .line 1387
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_70
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1390
    goto/16 :goto_0

    .line 1380
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1381
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1383
    goto/16 :goto_0

    .line 1372
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1374
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    goto/16 :goto_0

    .line 1363
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1365
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    goto/16 :goto_0

    .line 1355
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v0

    .line 1356
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1358
    goto/16 :goto_0

    .line 1349
    .end local v0    # "_result":Z
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    goto/16 :goto_0

    .line 1339
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1341
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    goto/16 :goto_0

    .line 1330
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    goto/16 :goto_0

    .line 1321
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1322
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    goto/16 :goto_0

    .line 1313
    .end local v0    # "_arg0":Z
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v0

    .line 1314
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1316
    goto/16 :goto_0

    .line 1307
    .end local v0    # "_result":Z
    :pswitch_7a
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 1308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    goto/16 :goto_0

    .line 1297
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1299
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1300
    .local v1, "_arg1":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1301
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    goto/16 :goto_0

    .line 1286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1288
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1289
    .restart local v1    # "_arg1":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 1291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    goto/16 :goto_0

    .line 1275
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/RouteInfo;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    goto/16 :goto_0

    .line 1266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    goto/16 :goto_0

    .line 1257
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto/16 :goto_0

    .line 1246
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1249
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_0

    .line 1237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    goto/16 :goto_0

    .line 1228
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto :goto_0

    .line 1219
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    goto :goto_0

    .line 1208
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/InterfaceConfiguration;

    .line 1211
    .local v1, "_arg1":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1212
    invoke-virtual {v7, v0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    goto :goto_0

    .line 1198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/InterfaceConfiguration;
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 1201
    .local v1, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1203
    goto :goto_0

    .line 1190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/net/InterfaceConfiguration;
    :pswitch_86
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1193
    goto :goto_0

    .line 1182
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v0

    .line 1183
    .local v0, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    goto :goto_0

    .line 1173
    .end local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v0

    .line 1174
    .restart local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {v7, v0}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    nop

    .line 2633
    .end local v0    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
