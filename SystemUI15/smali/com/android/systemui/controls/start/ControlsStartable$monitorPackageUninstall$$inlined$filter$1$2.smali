.class public final Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/controls/start/ControlsStartable;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/controls/start/ControlsStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;-><init>(Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/common/shared/model/PackageChangeModel$Uninstalled;

    iget-object v2, p0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iget-object v2, v2, Lcom/android/systemui/controls/start/ControlsStartable;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    check-cast v2, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v2, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    :goto_1
    iget-object v2, v2, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v2, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v5, "controls_prefs"

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "controls_component"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v6, v5

    goto :goto_2

    :cond_4
    new-instance v6, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    const-string v7, "controls_structure"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const-string v8, "controls_is_panel"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v6, v7, v4, v2}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    :goto_2
    if-eqz v6, :cond_5

    iget-object v2, v6, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_5
    iget-object p2, p2, Lcom/android/systemui/common/shared/model/PackageChangeModel$Uninstalled;->packageName:Ljava/lang/String;

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iput v3, v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
