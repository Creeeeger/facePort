.class final Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;
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
.field final synthetic $value:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->$value:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->$value:Z

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;-><init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Pair;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->SHOW_MUSIC_SHARE:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->$value:Z

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p1, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1$1$1;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setShowMusicShareEnabled$1;->label:I

    invoke-static {v1, v5, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
