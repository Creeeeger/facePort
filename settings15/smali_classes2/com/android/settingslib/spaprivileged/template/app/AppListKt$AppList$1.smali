.class final Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_AppList:Lcom/android/settingslib/spaprivileged/template/app/AppListInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListInput;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$1;->$this_AppList:Lcom/android/settingslib/spaprivileged/template/app/AppListInput;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x6fc76cfd

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$1;->$this_AppList:Lcom/android/settingslib/spaprivileged/template/app/AppListInput;

    iget-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->config:Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;

    const v0, 0x1d49dee2

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p2, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->userIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x671a9c9b

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of v2, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModel;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3, v1, v0, v2, p1}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModel;

    iget-object v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->appListConfig:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    iget-object v2, v2, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->stateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->listModel:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    iget-object v2, v2, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->stateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->state:Lcom/android/settingslib/spaprivileged/template/app/AppListState;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListState;->showSystem:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->showSystem:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    const/16 v4, 0x40

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->Sync(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    iget-object v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->searchQuery:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListState;->searchQuery:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, p0, p1, v4}, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->Sync(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const p0, -0x55a7bb0f

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v2, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$rememberViewModel$1$1;

    invoke-direct {v2, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$rememberViewModel$1$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModel;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x0

    const/4 v4, 0x2

    invoke-static {v2, p0, p1, v1, v4}, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt;->LifecycleEffect(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->userIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v4, "of(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x55a7b96e

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    new-instance v5, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$rememberViewModel$2$1;

    invoke-direct {v5, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$rememberViewModel$2$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModel;)V

    invoke-virtual {p1, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x48

    invoke-static {p0, v2, v5, p1, v4}, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt;->DisposableBroadcastReceiverAsUser(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
