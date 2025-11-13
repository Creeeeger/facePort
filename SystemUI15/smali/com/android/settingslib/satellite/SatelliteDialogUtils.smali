.class public final Lcom/android/settingslib/satellite/SatelliteDialogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/satellite/SatelliteDialogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/satellite/SatelliteDialogUtils;

    invoke-direct {v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils;-><init>()V

    sput-object v0, Lcom/android/settingslib/satellite/SatelliteDialogUtils;->INSTANCE:Lcom/android/settingslib/satellite/SatelliteDialogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$requestIsEnabled(Lcom/android/settingslib/satellite/SatelliteDialogUtils;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final mayStartSatelliteWarningDialog(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda25;)Lkotlinx/coroutines/Job;
    .locals 3

    new-instance v0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
