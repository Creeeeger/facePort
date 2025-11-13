.class public final Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

.field public mCommunalVisible:Z

.field public final mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field public final mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public mEntryAnimationsFinished:Z

.field public final mExtraStatusBarItems:Ljava/util/List;

.field public mIsAttached:Z

.field public final mLogger:Lcom/android/systemui/dreams/DreamLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNextAlarmCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;

.field public final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public final mNotificationCountCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSensorCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public final mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

.field public final mStatusBarItemsProviderCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWifiInteractor:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;

.field public final mZenModeCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public static $r8$lambda$K0wXz652B8Jyh9bMy8eqfTnVhUo(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mExtraStatusBarItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mExtraStatusBarItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static $r8$lambda$UoohdCnOV3aj3xxsZILgQEVVriI(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;ZILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mIsAttached:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->$r8$clinit:I

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(unknown)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "assistant_attention_active"

    goto :goto_0

    :pswitch_1
    const-string v0, "priority_mode_on"

    goto :goto_0

    :pswitch_2
    const-string v0, "mic_camera_disabled"

    goto :goto_0

    :pswitch_3
    const-string v0, "mic_disabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "camera_disabled"

    goto :goto_0

    :pswitch_5
    const-string v0, "alarm_set"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "wifi_unavailable"

    goto :goto_0

    :pswitch_7
    const-string v0, "notifications"

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/dreams/DreamLogger;->logShowOrHideStatusBarItem(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mStatusIcons:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, p3

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    move p2, v0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    move p3, v0

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/log/LogBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;",
            "Landroid/content/res/Resources;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            "Lcom/android/systemui/util/time/DateFormatUtil;",
            "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;",
            "Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;",
            "Lcom/android/systemui/log/LogBuffer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p10

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mExtraStatusBarItems:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mEntryAnimationsFinished:Z

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$1;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNotificationCountCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mResources:Landroid/content/res/Resources;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    iput-object v1, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mWifiInteractor:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    new-instance v2, Lcom/android/systemui/dreams/DreamLogger;

    const-string v3, "DreamStatusBarCtrl"

    move-object/from16 v4, p16

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/dreams/DreamLogger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    new-instance v2, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V

    invoke-virtual {p10, v2}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->addListener(Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;)V

    return-void
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mIsAttached:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mWifiInteractor:Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractor;

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;->wifiNetwork:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    new-instance v3, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;I)V

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object v2, v2, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    new-instance v3, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;I)V

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->updateAlarmStatusIcon()V

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->updateMicCameraBlockedStatusIcon()V

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f130df1

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;

    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object p0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda3;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setDreamOverlayStatusBarVisible(Z)V

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mIsAttached:Z

    return-void
.end method

.method public final setFadeAmount(FZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->updateVisibility$3()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-static {p0, p2, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    :goto_0
    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final showIcon(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;ZILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateAlarmStatusIcon()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-virtual {v2}, Lcom/android/systemui/util/time/DateFormatUtil;->is24HourFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EHm"

    goto :goto_1

    :cond_1
    const-string v2, "Ehma"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f130105

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda9;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;ZILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateMicCameraBlockedStatusIcon()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result v1

    const/4 v3, 0x2

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const v5, 0x7f13034c

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v5, v4}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const v5, 0x7f130c0b

    const/4 v6, 0x4

    invoke-virtual {p0, v6, v5, v4}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const v0, 0x7f13034b

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    return-void
.end method

.method public final updateVisibility$3()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget v2, v2, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mCommunalVisible:Z

    if-eqz v2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    if-ne v0, v2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setDreamOverlayStatusBarVisible(Z)V

    return-void
.end method

.method public updateWifiUnavailableStatusIcon(Z)V
    .locals 2

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const v1, 0x7f13151f

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    return-void
.end method
