.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

.field public static final WIFI_ACTIVITY:[I

.field public static final WIFI_ICON_5:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    const v0, 0x7f0813ab

    const v1, 0x7f0813ac

    const v2, 0x7f0813ad

    const v3, 0x7f0813ae

    const v4, 0x7f0813af

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    const v6, 0x7f0813b1

    const v7, 0x7f0813b2

    const v8, 0x7f0813b0

    const v9, 0x7f0813b3

    const v10, 0x7f0813b4

    filled-new-array {v8, v6, v7, v9, v10}, [I

    move-result-object v6

    filled-new-array {v5, v6}, [[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I

    const v5, 0x7f0813c3

    const v6, 0x7f0813b8

    const v7, 0x7f0813c4

    const v8, 0x7f0813b9

    filled-new-array {v5, v6, v7, v8}, [I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ACTIVITY:[I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v6

    const v7, 0x7f08139d

    const v8, 0x7f08139e

    const v9, 0x7f08139c

    const v10, 0x7f08139f

    const v11, 0x7f0813a0

    filled-new-array {v9, v7, v8, v10, v11}, [I

    move-result-object v7

    filled-new-array {v6, v7}, [[I

    move-result-object v11

    new-instance v6, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v7, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v8, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v15, 0x1080608

    const v16, 0x1080608

    const-string v10, "Wi-Fi 5 icons"

    const v14, 0x1080608

    const v17, 0x1080608

    const v18, 0x7f1300f0

    move-object v9, v6

    move-object v12, v7

    move-object v13, v8

    move-object/from16 v19, v5

    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_5:Lcom/android/settingslib/SignalIcon$IconGroup;

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v6

    const v9, 0x7f0813a2

    const v10, 0x7f0813a3

    const v11, 0x7f0813a1

    const v12, 0x7f0813a4

    const v13, 0x7f0813a5

    filled-new-array {v11, v9, v10, v12, v13}, [I

    move-result-object v9

    filled-new-array {v6, v9}, [[I

    move-result-object v11

    new-instance v6, Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string v10, "Wi-Fi 6G icons"

    move-object v9, v6

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v6

    const v9, 0x7f081294

    const v10, 0x7f081295

    const v11, 0x7f081293

    const v12, 0x7f081296

    const v13, 0x7f081297

    filled-new-array {v11, v9, v10, v12, v13}, [I

    move-result-object v9

    filled-new-array {v6, v9}, [[I

    move-result-object v11

    new-instance v6, Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string v10, "Wi-Fi 6Ge icons"

    move-object v9, v6

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    const v1, 0x7f0813a7

    const v2, 0x7f0813a8

    const v3, 0x7f0813a6

    const v4, 0x7f0813a9

    const v6, 0x7f0813aa

    filled-new-array {v3, v1, v2, v4, v6}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v11

    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string v10, "Wi-Fi 7G icons"

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

    const v0, 0x7f0813c5

    const v1, 0x7f0813c6

    const v2, 0x7f0813c7

    const v3, 0x7f0813c8

    const v4, 0x7f0813c9

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v6

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    filled-new-array {v6, v0}, [[I

    move-result-object v11

    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    const-string v10, "Wi-Fi calling Wi-Fi icons"

    move-object v9, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
