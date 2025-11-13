.class final Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;
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
.field final synthetic $lastRingerMode:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->$lastRingerMode:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;

    iget v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->$lastRingerMode:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;-><init>(ILcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->$lastRingerMode:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->this$0:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;

    iget-object v0, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    check-cast v0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v1, "quick_affordance_mute_ringer_mode_cache"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_last_non_silent_ringer_mode"

    iget p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$updateLastNonSilentRingerMode$1;->$lastRingerMode:I

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
