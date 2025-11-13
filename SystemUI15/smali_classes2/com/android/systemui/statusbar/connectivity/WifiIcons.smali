.class public final Lcom/android/systemui/statusbar/connectivity/WifiIcons;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_FULL_ICONS:[I

.field public static final WIFI_NO_INTERNET_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const v0, 0x108060b

    const v1, 0x108060c

    const v2, 0x1080608

    const v3, 0x1080609

    const v4, 0x108060a

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const v1, 0x7f080a67

    const v2, 0x7f080a68

    const v3, 0x7f080a64

    const v4, 0x7f080a65

    const v5, 0x7f080a66

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    filled-new-array {v1, v0}, [[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v0, 0x0

    aget-object v0, v5, v0

    array-length v0, v0

    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SAMSUNG:[[I

    sget-object v6, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget-object v12, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ACTIVITY:[I

    const v9, 0x1080608

    const v10, 0x1080608

    const-string v3, "Wi-Fi Icons"

    const v7, 0x1080608

    const v8, 0x1080608

    const v11, 0x7f1300f0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
