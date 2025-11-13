.class final Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    check-cast v0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v1, "quick_affordance_mute_ringer_mode_cache"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig$getLastNonSilentRingerMode$2;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceConfig;->ringerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {p0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string v0, "key_last_non_silent_ringer_mode"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
