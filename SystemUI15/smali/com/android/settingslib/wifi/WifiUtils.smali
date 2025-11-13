.class public final Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_WIFI_DIALOG:Ljava/lang/String;

.field public static final Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

.field public static final EXTRA_CHOSEN_WIFI_ENTRY_KEY:Ljava/lang/String;

.field public static final EXTRA_CONNECT_FOR_CALLER:Ljava/lang/String;

.field public static final NO_INTERNET_WIFI_PIE:[I

.field public static final WIFI_PIE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settingslib/wifi/WifiUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/WifiUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    const-string v0, "com.android.settings.WIFI_DIALOG"

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->ACTION_WIFI_DIALOG:Ljava/lang/String;

    const-string v0, "key_chosen_wifientry_key"

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->EXTRA_CHOSEN_WIFI_ENTRY_KEY:Ljava/lang/String;

    const-string v0, "connect_for_caller"

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->EXTRA_CONNECT_FOR_CALLER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const v0, 0x108060b

    const v1, 0x108060c

    const v2, 0x1080608

    const v3, 0x1080609

    const v4, 0x108060a

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    const v0, 0x7f080a67

    const v1, 0x7f080a68

    const v2, 0x7f080a64

    const v3, 0x7f080a65

    const v4, 0x7f080a66

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkWepAllowed(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda2;Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;)Lkotlinx/coroutines/Job;
    .locals 8

    sget-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$2;

    const/4 v7, 0x0

    const/16 v5, 0x7d9

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiUtils$Companion;->getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiUtils$Companion;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
