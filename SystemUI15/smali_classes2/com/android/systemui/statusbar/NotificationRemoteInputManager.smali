.class public final Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final ENABLE_REMOTE_INPUT:Z

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z


# instance fields
.field public final mActionPressListeners:Lcom/android/systemui/util/ListenerSet;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

.field public final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field public final mContext:Landroid/content/Context;

.field public final mControllerCallbacks:Ljava/util/List;

.field public final mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public final mRemoteInputControllerLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

.field public mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

.field public final mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

.field public final mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.enable_remote_input"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    const-string v0, "debug.force_remoteinput_history"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p2}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActionPressListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iput-object p13, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    const-string/jumbo p2, "statusbar"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActivityManager:Landroid/app/ActivityManager;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputControllerLogger:Lcom/android/systemui/statusbar/notification/RemoteInputControllerLogger;

    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iput-object p14, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z
    .locals 14

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p5

    const/4 v8, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v9, 0x10205fb

    if-ne v5, v9, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    const v5, 0x7f0a0a0a

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v9, v4

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    move-object v9, v2

    :goto_1
    const/4 v10, 0x0

    if-nez v9, :cond_2

    return v10

    :cond_2
    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v10

    :goto_2
    if-eqz v5, :cond_4

    iget-object v11, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v11}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v8

    goto :goto_3

    :cond_4
    move v11, v10

    :goto_3
    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v13}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v13

    if-ne v13, v8, :cond_6

    :cond_5
    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v12

    if-eqz v12, :cond_18

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v13, :cond_18

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v12, :cond_18

    :cond_6
    if-eqz v5, :cond_7

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    goto/16 :goto_a

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_8

    move-object v2, v3

    :cond_8
    if-nez v2, :cond_a

    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v2, :cond_9

    move-object v2, v3

    goto :goto_4

    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :goto_4
    if-nez v2, :cond_a

    return v10

    :cond_a
    iget-object v4, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-ne v2, v5, :cond_11

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v11, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v12, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V

    check-cast v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v0, :cond_b

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_b
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object v0, v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    iput-object v7, v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    goto :goto_7

    :cond_c
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-nez v0, :cond_d

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v11, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    :cond_d
    invoke-static {}, Landroid/app/Flags;->compactHeadsUpNotificationReply()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    goto :goto_5

    :cond_e
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mVisibleType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    :goto_5
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;

    if-eqz v0, :cond_10

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v0, :cond_f

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v9, v10, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :cond_f
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;->onClick(Landroid/view/View;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :goto_6
    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    :goto_7
    return v8

    :cond_11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_12

    return v10

    :cond_12
    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->startAppLockCheckService(Ljava/lang/String;)V

    :cond_13
    iget-object v1, v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->setRemoteInput(Landroid/app/RemoteInput;)V

    iget-object v1, v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    if-eqz v6, :cond_14

    iget-object v4, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;->originalText:Ljava/lang/CharSequence;

    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    :cond_14
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_17

    iput-boolean v8, v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mIsAnimatingAppearance:Z

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    const v3, 0x10201d1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_8
    new-instance v1, Landroidx/core/animation/AnimatorSet;

    invoke-direct {v1}, Landroidx/core/animation/AnimatorSet;-><init>()V

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v4, v5}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x21

    invoke-virtual {v5, v6, v7}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x53

    invoke-virtual {v5, v6, v7}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)Landroidx/core/animation/Animator;

    sget-object v6, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    invoke-virtual {v5, v6}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2, v7, v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroidx/core/animation/ValueAnimator;I)V

    invoke-virtual {v7, v9}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x168

    invoke-virtual {v7, v9, v10}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    if-nez v3, :cond_16

    filled-new-array {v5, v7}, [Landroidx/core/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    goto :goto_9

    :cond_16
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v3, v4, v0}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v9, 0x32

    invoke-virtual {v0, v9, v10}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)Landroidx/core/animation/Animator;

    invoke-virtual {v0, v6}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    filled-new-array {v5, v7, v0}, [Landroidx/core/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    :goto_9
    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$3;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    invoke-virtual {v1, v0}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroidx/core/animation/AnimatorSet;->start()V

    :cond_17
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    return v8

    :cond_18
    if-eqz v5, :cond_19

    if-nez v11, :cond_19

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    goto :goto_a

    :cond_19
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_1a
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    :goto_a
    return v8

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final closeRemoteInputs(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mRemoteInputController: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "mLastAppliedRemoteInputActive: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mLastAppliedRemoteInputActive:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "isRemoteInputActive: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive$1()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/RemoteInputController;Landroid/util/IndentingPrintWriter;I)V

    invoke-static {p1, v1}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSpinning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/RemoteInputController;Landroid/util/IndentingPrintWriter;I)V

    invoke-static {p1, v1}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "mDelegate: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    instance-of v1, v0, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mRemoteInputListener: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public final isRemoteInputActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive$1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSpinning(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 6

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isSpinning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr p0, v4

    cmp-long p0, v2, p0

    if-gez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startAppLockCheckService(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.applock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v2, "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LAUNCH_FROM_RESUME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "startFromNotification"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "LOCKED_PACKAGE_DISPLAYID"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
