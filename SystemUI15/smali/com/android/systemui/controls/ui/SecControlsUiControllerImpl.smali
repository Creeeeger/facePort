.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;
.implements Lcom/android/systemui/controls/ui/SecControlsUiController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activityContext:Landroid/content/Context;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public adapterNeedToUpdateDataSet:Z

.field public allComponentInfo:Ljava/util/List;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

.field public final context:Landroid/content/Context;

.field public final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field public controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

.field public final controlsActivityStarter:Ldagger/Lazy;

.field public final controlsController:Ldagger/Lazy;

.field public final controlsListingController:Ldagger/Lazy;

.field public final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field public final controlsPanelCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

.field public final controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;

.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public hidden:Z

.field public isAddedTaskView:Z

.field public isChanged:Z

.field public isShowOverLockscreenWhenLocked:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public launchingPendingIntent:Landroid/app/PendingIntent;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

.field public final localeComparator:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$special$$inlined$compareBy$1;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

.field public final models:Ljava/util/List;

.field public noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

.field public noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

.field public onDismiss:Ljava/lang/Runnable;

.field public final openAppButtonClickListener:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;

.field public panelPendingIntent:Landroid/app/PendingIntent;

.field public panelView:Landroid/widget/FrameLayout;

.field public parent:Landroid/view/ViewGroup;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

.field public final secControlsController:Ldagger/Lazy;

.field public final secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

.field public final selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

.field public selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

.field public serviceInfos:Ljava/util/List;

.field public final spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

.field public final spinnerTouchCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;

.field public taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

.field public final taskViewFactory:Ljava/util/Optional;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public verificationStructureInfos:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Ljava/util/Optional;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/basic/util/LogWrapper;Ldagger/Lazy;Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Ldagger/Lazy;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;",
            ">;",
            "Lcom/android/systemui/controls/settings/ControlsSettingsRepository;",
            "Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;",
            "Lcom/android/systemui/controls/panels/SelectedComponentRepository;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/controls/ui/SecControlActionCoordinator;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            "Lcom/android/systemui/controls/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsActivityStarter:Ldagger/Lazy;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$special$$inlined$compareBy$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$special$$inlined$compareBy$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/controls/management/model/MainComponentModel;-><init>(Ljava/util/List;Landroid/content/ComponentName;Z)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    const-class v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p15

    invoke-static {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsPanelCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->openAppButtonClickListener:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    return-void
.end method

.method public static final access$getComponent(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    return-object v0
.end method

.method public static final access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v6, v6, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v7}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Lcom/android/systemui/controls/management/model/MainControlModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v9, v10, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v9, v10, :cond_9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string v3, "SecControlsUiControllerImpl"

    iget-object v8, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    if-nez v5, :cond_12

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_12

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    goto :goto_6

    :cond_c
    iget-object v9, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    :goto_6
    iget-object v10, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v11, v15

    move-object v6, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_d
    iget-object v6, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v12, :cond_e

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v11, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "listAdjustmentIfNeeded-notifyItemInserted: structureName="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", models="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "listAdjustmentIfNeeded-notifyItemRemoved: structureName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public static final access$reload(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectedItem;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v1, :cond_5

    iput-object v0, v1, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelPendingIntent:Landroid/app/PendingIntent;

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isAddedTaskView:Z

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object v0, v2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reload selected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", allComponentInfo = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecControlsUiControllerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    :cond_8
    :goto_2
    return-void
.end method

.method public static final access$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->STRUCTURE:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    check-cast v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-boolean v0, v2, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    if-eq v0, v1, :cond_7

    iput-boolean v1, v2, Lcom/android/systemui/controls/management/model/MainControlModel;->needToHide:Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    return-void
.end method

.method public static synthetic getAllComponentInfo$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getFragmentManager$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getListingCallback$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "SecControlsUiControllerImpl:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hidden: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectedItem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    check-cast p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setting: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getPanelServiceInfos()Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-static {v0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_4
    move-object v4, v5

    :goto_0
    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez v4, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez v4, :cond_5

    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    return-object p0

    :cond_5
    iget-object p1, v4, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    goto :goto_1

    :cond_6
    move-object v2, v5

    :goto_1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    iget-boolean p1, v1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->isPanel:Z

    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    iget-object p1, v4, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    new-instance p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v2, v4, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_9
    move-object p1, v5

    :goto_2
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz p1, :cond_a

    iget-object v5, p1, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    :cond_a
    if-eqz v5, :cond_b

    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, v4, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    new-instance p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    return-object p0

    :cond_b
    new-instance p0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_c
    const-string p1, ""

    :goto_3
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    new-instance p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    return-object p0
.end method

.method public final getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getPanelServiceInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    new-instance p0, Lcom/android/systemui/controls/controller/StructureInfo;

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean v0, p0, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    filled-new-array {p0}, [Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/controls/management/model/MainModel$Type;->CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-eq v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/MainControlModel;->getType()Lcom/android/systemui/controls/management/model/MainModel$Type;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/controls/management/model/MainModel$Type;->SMALL_CONTROL:Lcom/android/systemui/controls/management/model/MainModel$Type;

    if-ne v3, v4, :cond_5

    :cond_6
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/MainControlModel;->structure:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v4, v4, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/systemui/controls/controller/StructureInfo;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean v0, v2, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    return-object p0
.end method

.method public final hide(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SecControlsUiControllerImpl"

    if-eqz p1, :cond_f

    const-string p1, "hide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-object v1, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-object v1, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v2, p1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-ne v2, p1, :cond_9

    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object p1, p1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    :cond_b
    iput-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz p1, :cond_c

    iput-object v1, p1, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelPendingIntent:Landroid/app/PendingIntent;

    :cond_c
    iput-boolean v3, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isAddedTaskView:Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    :goto_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz p0, :cond_e

    move-object v1, p0

    :cond_e
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const-string p0, "hide parent is diff"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method public final isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getPanelServiceInfos()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    return-object v0
.end method

.method public final loadComponentInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadComponentInfo() selectedItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", allComponentInfo = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecControlsUiControllerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final moveElement$1(II)V
    .locals 2

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p1, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->inProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyItemChanged$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V

    const-wide/16 p1, 0xc8

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyItemChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "SecControlsUiControllerImpl"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final saveFavorites(Landroid/content/ComponentName;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/Favorites;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v1

    const-string v2, "SecControlsUiControllerImpl"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Skip saveFavorites component: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "saveFavorites component "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", structureInfos:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/SecControlsController;

    new-instance v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public final unsubscribeAndUnbindIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecControlsUiControllerImpl"

    const-string/jumbo v1, "unsubscribeAndUnbindIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ComponentInfo;",
            ">;",
            "Lcom/android/systemui/controls/ui/SelectedItem;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-boolean v7, v7, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    if-eqz v7, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v8, v8, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    new-instance v12, Lcom/android/systemui/controls/ui/SecSelectionItem;

    invoke-virtual {v5}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, v5, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v5, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v5, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/controls/ui/SecSelectionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILandroid/content/ComponentName;)V

    sget-object v5, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v6, v12, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    iget-object v7, v12, Lcom/android/systemui/controls/ui/SecSelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "SecControlsUiControllerImpl"

    if-eqz v4, :cond_8

    const-string v0, "filteredList is Empty"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/systemui/controls/ui/SecSelectionItem;

    iget-object v8, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    check-cast v6, Lcom/android/systemui/controls/ui/SecSelectionItem;

    const/4 v4, 0x0

    if-nez v6, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/ui/SecSelectionItem;

    :cond_b
    iget-object v8, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    iget-object v9, v8, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_d

    iget-object v9, v8, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    iget-object v11, v6, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_5

    :cond_c
    move v9, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v9, v10

    :goto_6
    iput-object v3, v8, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    iget-object v3, v6, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    iput-object v3, v8, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v3, :cond_e

    iget v11, v6, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    iput v11, v3, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->uid:I

    iget-object v11, v3, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateComponentModel isDirty = "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v11, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v12, v6, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v14, v14, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v10

    if-eqz v14, :cond_f

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v13, v12, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v15, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_12

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    :goto_9
    check-cast v7, Lcom/android/systemui/controls/controller/StructureInfo;

    if-eqz v7, :cond_13

    iget-object v7, v7, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_a
    const/4 v15, 0x0

    goto :goto_b

    :cond_13
    move v7, v4

    goto :goto_a

    :goto_b
    invoke-direct {v14, v13, v15, v7}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v12, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/controls/controller/ControlInfo;

    new-instance v15, Lcom/android/systemui/controls/management/model/MainControlModel;

    new-instance v4, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v10, v12, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v20, v7

    const/4 v7, 0x0

    invoke-direct {v4, v10, v14, v7}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v14, v15

    move-object v7, v15

    move-object v15, v13

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/android/systemui/controls/management/model/MainControlModel;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/ui/ControlWithState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v20

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto :goto_c

    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v11, :cond_15

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateModels forcedUpdate = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " > "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v10, v10, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v10, :cond_18

    iget-object v10, v10, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v10, :cond_18

    iget-object v15, v10, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    goto :goto_f

    :cond_18
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_17

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1a
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object v11, v11, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v11, :cond_1b

    iget-object v11, v11, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v11, :cond_1b

    iget-object v15, v11, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    goto :goto_11

    :cond_1b
    const/4 v15, 0x0

    :goto_11
    if-eqz v15, :cond_1a

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    if-nez v4, :cond_1d

    if-nez v9, :cond_1d

    iget-object v4, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v7, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v7}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    move-result-object v7

    if-eqz v7, :cond_1e

    iget-object v4, v7, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    :cond_1e
    if-eqz v4, :cond_20

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    check-cast v2, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v8, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v4, v7, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS"

    invoke-virtual {v10, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/controls/flags/Flags;->homePanelDream()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "android.service.controls.extra.CONTROLS_SURFACE"

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1f
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    const/4 v9, 0x0

    const/high16 v11, 0xc000000

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_21

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v4, :cond_21

    iput-object v2, v4, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsPanelCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    iput-object v6, v4, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsPanelUpdatedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    iget-object v4, v4, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v2}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;->onPanelUpdated(Landroid/widget/FrameLayout;Landroid/app/PendingIntent;)V

    goto :goto_12

    :cond_20
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_21
    :goto_12
    iget-object v2, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    :cond_22
    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    instance-of v2, v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    if-eqz v2, :cond_23

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    check-cast v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->name:Ljava/lang/CharSequence;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    goto :goto_13

    :cond_23
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v13, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v8, ""

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x1

    iput-boolean v6, v13, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    filled-new-array {v13}, [Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-direct {v7, v4, v6}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v2, v7}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->subscribeToFavorites(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;

    const/4 v10, 0x1

    invoke-direct {v4, v2, v10, v10}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;ZZ)V

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v3, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    :goto_13
    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update selectedItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    move v7, v4

    const/4 v4, 0x0

    move v4, v7

    goto/16 :goto_7

    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
