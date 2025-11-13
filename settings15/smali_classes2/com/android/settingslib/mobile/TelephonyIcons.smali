.class public abstract Lcom/android/settingslib/mobile/TelephonyIcons;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v1, "CARRIER_NETWORK_CHANGE"

    const v2, 0x7f1408e7

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v2, "3G"

    const v3, 0x7f140b60

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v2, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v3, "WFC"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->WFC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v3, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v5, "Unknown"

    invoke-direct {v3, v5, v4}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v4, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v5, "E"

    const v6, 0x7f140b6a

    invoke-direct {v4, v5, v6}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v6, "1X"

    const v7, 0x7f140b69

    invoke-direct {v5, v6, v7}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v6, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v7, "G"

    const v8, 0x7f140b6c

    invoke-direct {v6, v7, v8}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v7, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v8, "H"

    const v9, 0x7f140b5e

    invoke-direct {v7, v8, v9}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v9, "H+"

    const v10, 0x7f140b5f

    invoke-direct {v8, v9, v10}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v10, "4G"

    const v11, 0x7f140b61

    invoke-direct {v9, v10, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v11, "4G+"

    const v12, 0x7f140b64

    invoke-direct {v10, v11, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v12, "LTE"

    const v13, 0x7f140b6d

    invoke-direct {v11, v12, v13}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v13, "LTE+"

    const v14, 0x7f140b6e

    invoke-direct {v12, v13, v14}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v13, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v14, "4G LTE"

    const v15, 0x7f140b62

    invoke-direct {v13, v14, v15}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v14, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "4G LTE+"

    move-object/from16 v16, v12

    const v12, 0x7f140b63

    invoke-direct {v14, v15, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "5Ge"

    move-object/from16 v17, v11

    const v11, 0x7f140b67

    invoke-direct {v12, v15, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "5G"

    move-object/from16 v18, v12

    const v12, 0x7f140b65

    invoke-direct {v11, v15, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "5G_PLUS"

    move-object/from16 v19, v11

    const v11, 0x7f140b66

    invoke-direct {v12, v15, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "DataDisabled"

    move-object/from16 v20, v12

    const v12, 0x7f140907

    invoke-direct {v11, v15, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "NotDefaultData"

    move-object/from16 v21, v11

    const v11, 0x7f141a53

    invoke-direct {v12, v15, v11}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    const-string v15, "CWF"

    move-object/from16 v22, v12

    const v12, 0x7f140b68

    invoke-direct {v11, v15, v12}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "carrier_network_change"

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3g"

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wfc"

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unknown"

    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    invoke-virtual {v11, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1x"

    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "g"

    invoke-virtual {v11, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "h"

    invoke-virtual {v11, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "h+"

    invoke-virtual {v11, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4g"

    invoke-virtual {v11, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4g+"

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4glte"

    invoke-virtual {v11, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4glte+"

    invoke-virtual {v11, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5ge"

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte"

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lte+"

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g"

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5g_plus"

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datadisable"

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notdefaultdata"

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
