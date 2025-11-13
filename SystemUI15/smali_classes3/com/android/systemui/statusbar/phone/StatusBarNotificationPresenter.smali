.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationPresenter;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAlertsDisabledCondition:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mInterruptSuppressor:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mNeedsRedactionFilter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$6;

.field public final mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mNotifShadeEventSource:Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;

.field public final mNotificationAlertsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPanelsDisabledCondition:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$7;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mVrMode:Z

.field public final mVrModeCondition:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;

.field public final mVrStateCallbacks:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/InitController;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 10

    move-object v1, p0

    move-object/from16 v0, p8

    move-object/from16 v2, p22

    move-object/from16 v3, p24

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mInterruptSuppressor:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$3;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    sget-object v6, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;->PEEK:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;

    sget-object v7, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;->PULSE:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;

    sget-object v8, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;->BUBBLE:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionType;

    invoke-static {v6, v7, v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const-string v9, "notification alerts disabled"

    invoke-direct {v5, p0, v7, v9}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/util/Set;Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;

    invoke-static {v6, v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const-string v8, "device is in VR mode"

    invoke-direct {v5, p0, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/util/Set;Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$6;

    invoke-static {v6}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const-string v8, "needs redaction on public lockscreen"

    invoke-direct {v5, p0, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/util/Set;Ljava/lang/String;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$7;

    invoke-static {v6}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const-string v7, "disabled panel"

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/util/Set;Ljava/lang/String;)V

    move-object/from16 v5, p7

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v5, p12

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v5, p3

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object v5, p4

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object v5, p5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v5, p11

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationAlertsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationAlertsInteractor;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v5, p14

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v5, p15

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v5, p16

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v5, p17

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v5, p18

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v5, p19

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifShadeEventSource:Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;

    move-object/from16 v5, p20

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object/from16 v5, p21

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    new-instance v5, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;-><init>(Landroid/view/ViewGroup;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const v0, 0x7f0a07fa

    move-object/from16 v6, p6

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    iput-object v0, v5, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const-class v0, Landroid/app/KeyguardManager;

    move-object v5, p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p26

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Failed to register VR mode state listener: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StatusBarNotificationPresenter"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$19;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$19;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v5, p25

    iput-object v5, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputControllerLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/systemui/statusbar/RemoteInputController;-><init>(Lcom/android/systemui/statusbar/RemoteInputController$Delegate;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;)V

    iput-object v0, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    :cond_1
    iget-object v0, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;

    move-object/from16 v3, p23

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;)V

    iget-boolean v1, v2, Lcom/android/systemui/InitController;->mTasksExecuted:Z

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/android/systemui/InitController;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "post init tasks have already been executed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final isCollapsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onExpandClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->setExpanded(Z)V

    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string v2, "NOTIFICATION_CLICK"

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-ne v0, v1, :cond_4

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/blur/SecQpBlurController;->doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xfa

    invoke-virtual {p0, p2}, Lcom/android/systemui/blur/SecQpBlurController;->doWindowBlur(I)V

    :cond_2
    :goto_0
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, p0, v4, v3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto/16 :goto_1

    :cond_3
    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromLockscreen()V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v0, v6, :cond_5

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, p0, v4, v3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v5, :cond_a

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v5, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, p0, v4, v3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :cond_a
    :goto_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_b

    const-string p0, "grouped"

    :goto_2
    move-object v3, p0

    goto :goto_3

    :cond_b
    const-string/jumbo p0, "single"

    goto :goto_2

    :goto_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "type"

    const-string v4, "app"

    const-string v0, "QPN001"

    const-string v1, "QPNE0008"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
