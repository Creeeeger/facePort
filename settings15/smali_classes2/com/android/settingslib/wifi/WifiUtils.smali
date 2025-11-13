.class public abstract Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

.field public static final NO_INTERNET_WIFI_PIE:[I

.field public static final WIFI_PIE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    const v0, 0x1080609

    const v1, 0x108060a

    const v2, 0x1080608

    const v3, 0x108060b

    const v4, 0x108060c

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    const v0, 0x7f080545

    const v1, 0x7f080546

    const v2, 0x7f080544

    const v3, 0x7f080547

    const v4, 0x7f080548

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    return-void
.end method

.method public static final checkWepAllowed(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ssid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v3, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$1;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$2;

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiUtils$Companion$checkWepAllowed$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v7, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public static final getHotspotIconResource(I)I
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f080452

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080450

    goto :goto_0

    :cond_1
    const v1, 0x7f080454

    goto :goto_0

    :cond_2
    const v1, 0x7f080451

    goto :goto_0

    :cond_3
    const v1, 0x7f080453

    :cond_4
    :goto_0
    return v1
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
