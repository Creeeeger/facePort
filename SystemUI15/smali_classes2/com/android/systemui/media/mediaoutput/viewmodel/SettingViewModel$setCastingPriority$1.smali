.class final Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;
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

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->$value:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->$value:Z

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;-><init>(ZLcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->I$0:I

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/Pair;

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

    sget-object v1, Lcom/android/systemui/media/mediaoutput/common/PreferenceKeys;->CASTING_PRIORITY:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->$value:Z

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p1, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v6, v4, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v7, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1$1$1;

    invoke-direct {v7, v1, v5, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1$1$1;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->I$0:I

    iput v3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->label:I

    invoke-static {v6, v7, p0}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v5

    :goto_0
    iget-object p1, v4, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, v1, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->router2Manager$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter2Manager;

    invoke-virtual {p1}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    move-object v2, p1

    :cond_3
    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Iterable;

    iget-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->$value:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/RoutingSessionInfo;

    const-string v5, "com.samsung.android.audiomirroring"

    if-eqz p1, :cond_5

    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    iget-object v2, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;->router2Manager$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager;

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel$setCastingPriority$1;->$value:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Casting;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Casting;

    goto :goto_4

    :cond_9
    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Mirroring;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$Mirroring;

    :goto_4
    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
