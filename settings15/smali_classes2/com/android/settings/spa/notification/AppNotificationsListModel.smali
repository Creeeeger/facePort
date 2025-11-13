.class public final Lcom/android/settings/spa/notification/AppNotificationsListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final now:J

.field public final repository:Lcom/android/settings/spa/notification/AppNotificationRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/notification/AppNotificationRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->now:J

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x8c9d1b7

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$changeable$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$changeable$2;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    new-instance v2, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$1;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V

    iget-object v1, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v1, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    iget-object v3, v1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    iget-object v3, v3, Lcom/android/settings/spa/notification/AppNotificationController;->_isEnabled:Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

    invoke-static {v3, p2}, Lcom/android/settingslib/spa/livedata/LiveDataExtKt;->observeAsCallback(Landroidx/lifecycle/LiveData;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v3

    const v4, 0x29b8cb2e

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_1

    :cond_0
    new-instance v5, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$2$1;

    invoke-direct {v5, v0}, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$3;

    iget-object v7, v1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    const-class v8, Lcom/android/settings/spa/notification/AppNotificationController;

    const-string v9, "setEnabled"

    const/4 v6, 0x1

    const-string v10, "setEnabled(Z)V"

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v7, 0x8

    move-object v1, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/AppListTwoTargetSwitchItemKt;->AppListTwoTargetSwitchItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$4;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p0, "recordListFlow"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$$inlined$map$1;

    invoke-direct {p0, p3, p2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;I)V

    return-object p0
.end method

.method public final getComparator(I)Ljava/util/Comparator;
    .locals 2

    sget-object v0, Lcom/android/settings/spa/notification/SpinnerItem;->Companion:Lcom/android/settings/spa/notification/SpinnerItem$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/spa/notification/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/spa/notification/SpinnerItem;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getComparator(I)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;

    new-instance p1, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;)V

    return-object p1
.end method

.method public final getSpinnerOptions(Ljava/util/List;)Ljava/util/List;
    .locals 5

    const-string v0, "recordList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/spa/notification/SpinnerItem;->AllApps:Lcom/android/settings/spa/notification/SpinnerItem;

    sget-object v1, Lcom/android/settings/spa/notification/SpinnerItem;->TurnedOff:Lcom/android/settings/spa/notification/SpinnerItem;

    filled-new-array {v0, v1}, [Lcom/android/settings/spa/notification/SpinnerItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    iget-object p1, p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    iget-object v2, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v2, Lcom/android/settings/spa/notification/AppNotificationRepository;->userManager:Landroid/os/IUserManager;

    invoke-interface {v2, p1}, Landroid/os/IUserManager;->isUserUnlocked(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "AppNotificationsRepo"

    const-string v3, "Error calling UserManager"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v1

    :goto_0
    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settings/spa/notification/SpinnerItem;->MostRecent:Lcom/android/settings/spa/notification/SpinnerItem;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p1, Lcom/android/settings/spa/notification/SpinnerItem;->MostFrequent:Lcom/android/settings/spa/notification/SpinnerItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/spa/notification/SpinnerItem;

    new-instance v2, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/spa/notification/SpinnerItem;->getStringResId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 2

    check-cast p2, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    const-string v0, "record"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5ccb7bd9

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    if-eqz p2, :cond_2

    sget-object v1, Lcom/android/settings/spa/notification/SpinnerItem;->Companion:Lcom/android/settings/spa/notification/SpinnerItem$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/settings/spa/notification/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/spa/notification/SpinnerItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$2;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settings/spa/notification/NotificationSentState;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$getSummary$1$1;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lcom/android/settings/spa/notification/NotificationSentState;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public final onFirstLoaded(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;

    iget v1, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;->result:Ljava/lang/Object;

    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$$inlined$asyncForEach$1;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$$inlined$asyncForEach$1;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)V

    iput v2, v0, Lcom/android/settings/spa/notification/AppNotificationsListModel$onFirstLoaded$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_3

    return-object p2

    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/spa/notification/AppNotificationRepository$getAggregatedUsageEvents$$inlined$map$1;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/spa/notification/AppNotificationRepository$getAggregatedUsageEvents$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settings/spa/notification/AppNotificationRepository;)V

    new-instance p1, Lcom/android/settings/spa/notification/AppNotificationsListModel$transform$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/spa/notification/AppNotificationsListModel$transform$1;-><init>(Lcom/android/settings/spa/notification/AppNotificationsListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
