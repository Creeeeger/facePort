.class public Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public activityManager:Landroid/app/ActivityManager;

.field public bModeUserId:I

.field public bubbleReply:I

.field public currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public currentUserId:I

.field public final drawWalkLockReleaseRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;

.field public mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public mDisplayContext:Landroid/content/Context;

.field public mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field public final mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field public mIsChangedToFoldState:Z

.field public mIsCovered:Z

.field public mIsFlexMode:Z

.field public mIsFolded:Z

.field public mIsFullscreenFullPopupWindowClosing:Z

.field public mIsKeyguardStateWhenAddSubscreenNotificationInfoList:Z

.field public mIsNotificationRemoved:Z

.field public mIsRemoving:Z

.field public mIsReplyNotification:Z

.field public mIsUpdatedAllMainList:Z

.field public mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListAdapterItemPosition:I

.field public final mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

.field public final mMainListArrayHashMap:Ljava/util/LinkedHashMap;

.field public final mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

.field public final mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

.field public mMainViewAnimator:Landroid/animation/Animator;

.field public mNotiPopupType:I

.field public mNotiPopupView:Landroid/view/View;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

.field public mScreenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mSubDisplay:Landroid/view/Display;

.field public mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

.field public final mSubScreenManagerLazy:Ldagger/Lazy;

.field public final mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mWakefulnessObserver$1;

.field public mWindowManager:Landroid/view/WindowManager;

.field public final marqueeStartRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;

.field public notiFullPopupBlocked:Z

.field public notiShowBlocked:Z

.field public popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

.field public popupViewShowing:Z

.field public popupViewTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

.field public presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

.field public presentationShowing:Z

.field public presentationTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

.field public final showPopupEntryKeySet:Landroid/util/ArraySet;

.field public final topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBuffer:Lcom/android/systemui/log/LogBuffer;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserManager:Landroid/os/UserManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bModeUserId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->marqueeStartRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mWakefulnessObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mWakefulnessObserver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWakefulnessObserver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mWakefulnessObserver$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->drawWalkLockReleaseRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;

    return-void
.end method

.method public static isOnlyGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putMainListArrayHashMap$default(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    return-void
.end method

.method public static updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 4

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsOnePhoneIcon:Z

    const/4 v1, 0x0

    const-string v2, "S.S.N."

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set sim_1 icon: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f08142d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsTwoPhoneIcon:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set sim_2 icon: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f08142e

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bindImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public cancelReplySendButtonAnimator()V
    .locals 0

    return-void
.end method

.method public final checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    invoke-static {v1, p1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-eqz p0, :cond_4

    :cond_3
    return p1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final checkEntryConditionsForNonAddition(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "updateMainListArray "

    const-string v3, "S.S.N."

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, " skip - mBubbleReplyEntry: "

    invoke-static {v2, p2, v0, v4, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "add Item"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bubbleReply:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, " skip - isBubbleNotificationSuppressed: "

    invoke-static {v2, p2, p1, v4, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v5, " skip - mIsNotificationRemoved - key :"

    const-string v6, " ,entry :"

    invoke-static {v2, p2, v5, v4, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string p1, " skip - mIsNotificationRemoved: "

    invoke-static {v2, p2, p1, v4, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method public final clearMainList()V
    .locals 2

    const-string v0, "S.S.N."

    const-string v1, " clearMainList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public clickAdapterItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 0

    return-void
.end method

.method public closeFullscreenFullPopupWindow()V
    .locals 0

    return-void
.end method

.method public detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->skipDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->launchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_4

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationSubRoomRequest()V

    :cond_3
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v2}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->moveDetailAdapterContentScroll(Landroid/view/View;ZZZ)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_5

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationSubRoomRequest()V

    :cond_6
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v3}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->showDetailNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$detailClicked$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$detailClicked$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object p1, v1

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_9
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    const-wide/16 p0, 0x12c

    goto :goto_5

    :cond_a
    const-wide/16 p0, 0x0

    :goto_5
    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method public dimissTopPopupNotification()V
    .locals 0

    return-void
.end method

.method public final dismissImmediately(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    const-string v4, " DISMISS IMMEDIATELY(popupType) - popupViewShowing : "

    const-string v5, ", presentationShowing : "

    const-string v6, ", mNotiPopupView : "

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPresentation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", popupType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "S.S.N."

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->marqueeStartRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-nez v1, :cond_2

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsRemoving:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->dismiss()V

    :cond_4
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    return-void
.end method

.method public final dismissImmediately(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    const-string v6, " DISMISS IMMEDIATELY(entry) - popupViewShowing : "

    const-string v7, ", presentationShowing : "

    const-string v8, ", currentPopupViewEntry : "

    invoke-static {v6, v7, v8, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPresentationEntry : "

    const-string v6, ", key : "

    invoke-static {v0, v2, v1, v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "S.S.N."

    invoke-static {v0, v5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_6
    invoke-static {v3, p1, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public foldStateChanged(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "FOLD "

    goto :goto_0

    :cond_0
    const-string v0, "UNFOLD "

    :goto_0
    const-string v1, " FOLD STATE parent- "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShouldSkipFullScreenIntent:Z

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, " foldStateChanged - clear mFullScreenIntentEntries"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const-string p1, " foldStateChanged - dismiss Presentation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->dismiss()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    if-eqz p1, :cond_7

    const-string p1, " foldStateChanged - remove top popup window"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    invoke-interface {p1, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

    if-nez p1, :cond_6

    move-object p1, v0

    :cond_6
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const-string v3, " foldStateChanged - clear popup key set : "

    invoke-static {p1, v3, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const-string v1, "SubscreenNotificationInfoManager"

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz p1, :cond_9

    const-string v3, " clearArrayListAll"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_b

    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda9;

    const-string v4, "Update the bubble notification in the subscreen state"

    invoke-direct {v3, p1, v2, v1, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_3

    :cond_c
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-eqz p0, :cond_d

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShouldSkipFullScreenIntent:Z

    :cond_d
    :goto_3
    return-void
.end method

.method public getDetailAdapterAutoScrollCurrentPositionByReceive(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDetailAdapterContentViewResource()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDetailAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailAdapterReplyWordResource()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDetailContentImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getDispalyHeight()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFullPopupWindowType()I
    .locals 0

    const/16 p0, 0x7ea

    return p0
.end method

.method public getGroupAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutInDisplayCutoutMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getListAdapterGroupItemResource()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getListAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public getMainHeaderViewHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMoreNotificationCount()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReplyButtonView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedReplyBGColor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSubIconVisible(ZZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSubscreenNotificationTipResource()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getTopActivityName()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->activityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    const-string p0, "S.S.N."

    const-string v1, "SecurityException while get top activity"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTopPopupLp()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopPresentationDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideDetailNotification()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    return-void
.end method

.method public final hideDetailNotificationAnimated(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setIsReplySendButtonLoading()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    const-string v0, "S.S.N."

    if-nez p2, :cond_2

    const-string p2, "hideDetailNotificationAnimated start animtion"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaAnimatedMainView(JLandroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_2
    const-string p1, "hideDetailNotificationAnimated already animtion"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->hideDetailNotif()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideDetailNotification()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->releaseSmartReply()V

    return-void
.end method

.method public final hideGroupNotification()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    const-string v1, "S.S.N."

    if-nez v0, :cond_1

    const-string v0, "hideGroupNotificationAnimated start animtion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideGroupNotificationAnimated$1$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideGroupNotificationAnimated$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    const/16 v0, 0x12c

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaAnimatedMainView(JLandroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_1
    const-string v0, "hideGroupNotificationAnimated already animtion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideGroupNotification()V

    :cond_2
    :goto_1
    return-void
.end method

.method public hideSmartReplyErrorMessage()V
    .locals 0

    return-void
.end method

.method public initDetailAdapterBackButton(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p2, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 0

    return-void
.end method

.method public initDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    array-length p0, v0

    const-string v0, "Parent - fail to get subDisplay, display list size is "

    const-string v1, "S.S.N."

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V
    .locals 0

    const p0, 0x7f0a0c72

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    const p0, 0x7f0a0c71

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mAppName:Landroid/widget/TextView;

    const p0, 0x7f0a0dc1

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    const p0, 0x7f0a0ada

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public initKeyguardActioninfo()V
    .locals 0

    return-void
.end method

.method public initMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V
    .locals 0

    return-void
.end method

.method public initSmartReplyStatus()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "edge"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDisplay()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_1

    const-string v3, "SystemUI:SubscreenNotification"

    const v4, 0x1000000a

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-wide/32 v3, 0x493e0

    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    const-string v2, "S.S.N.:ScreenOn"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mScreenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWakefulnessObserver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mWakefulnessObserver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateNotiShowBlocked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateBModeStatus()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->loadOnDeviceMetaData()V

    return-void
.end method

.method public final isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->bubblesOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->bubblesOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDismissiblePopup()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isKeyguardStats()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canHeadsUpCommonForFrontCoverScreen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const-string v2, "S.S.N."

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->panelsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "No heads up: disabled panel : "

    invoke-static {p2, v5, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mGroupEntry:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mLogicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canHeadsUpCommonForFrontCoverScreen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "alertOverride : summary - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " child - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "can\'t be alert because suppressAlertingDueToGrouping"

    invoke-static {v0, v5, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    if-eqz v0, :cond_6

    iget p2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_8

    :cond_6
    :goto_0
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    if-nez p2, :cond_8

    :cond_7
    move p2, v4

    goto :goto_2

    :cond_8
    :goto_1
    move p2, v3

    :goto_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    xor-int/2addr v0, v4

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_a

    move v6, v4

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    iget-object v9, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x2

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/edge/SemEdgeManager;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_5

    :cond_b
    move-object v7, v8

    :goto_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v9, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_c

    move v9, v4

    goto :goto_6

    :cond_c
    move v9, v3

    :goto_6
    iget-object v10, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_17

    if-nez v7, :cond_d

    const-string v10, ":!isActivatedPackage:"

    goto :goto_7

    :cond_d
    const-string v10, ""

    :goto_7
    if-nez p2, :cond_e

    const-string v11, ":!needsAlert:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_e
    if-nez v0, :cond_f

    const-string v11, ":!isNotSummary:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_f
    if-eqz v1, :cond_10

    const-string v11, ":isSecret:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_10
    if-eqz v6, :cond_11

    const-string v11, ":isDisabledByApp:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_11
    if-eqz v9, :cond_12

    const-string v11, ":isDisableHeadsUP:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_12
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    if-nez v11, :cond_13

    const-string v11, ":!isFolded:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_13
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    if-nez v11, :cond_14

    const-string v11, ":!isCovered:"

    invoke-static {v10, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_14
    sget-boolean v11, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz v11, :cond_15

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    if-eqz p1, :cond_15

    const-string p1, ":isGhost:"

    invoke-static {v10, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_15
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_16

    goto :goto_8

    :cond_16
    const-string p1, " - "

    invoke-static {v5, p1, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v10, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$logReason$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$logReason$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v5, v10, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_17
    :goto_8
    if-eqz v7, :cond_18

    if-nez v6, :cond_18

    if-eqz p2, :cond_18

    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    if-nez v9, :cond_18

    move v3, v4

    :cond_18
    return v3
.end method

.method public isRunOnCoverAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSamsungAccountLoggedIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowNotificationAppIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isShownDetail()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    :cond_1
    return v0
.end method

.method public final isShownGroup()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    :cond_1
    return v0
.end method

.method public isSkipFullscreenIntentClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

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

.method public final isSubScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

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

.method public isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchFullscreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadOnDeviceMetaData()V
    .locals 0

    return-void
.end method

.method public makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public final makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 11

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomBigNotification:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomHeadsUpNotification:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomPublicNotification:Z

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v0

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v7, v6

    :goto_3
    const-string v8, " MAKE DETAIL : exist Parent- PopupView: "

    const-string v9, " Presentation: "

    const-string v10, " entry key - "

    invoke-static {v8, v5, v9, v7, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isCustom - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " needsRedaction - "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasPublic - "

    const-string v8, "S.S.N."

    invoke-static {v5, v0, v3, v4, v8}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v6

    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    const/4 v4, 0x2

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    iput v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_6

    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_6
    if-nez v3, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    if-eqz p1, :cond_8

    const-string p1, " MAKE DETAIL : show notification is disabled. popup not showing"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void

    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiFullPopupBlocked:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    if-ne p1, v2, :cond_9

    const-string p1, " MAKE DETAIL : full popup not showing"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object p1, v6

    :goto_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_8

    :cond_b
    move-object v5, v6

    :goto_8
    iget v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " MAKE DETAIL : isInteractive - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " currentPopupViewEntry - "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentPresentationEntry - "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " notiPopupType - "

    const-string v0, " fullScreenNoti - "

    invoke-static {v9, v5, p1, v7, v0}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9, v3, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_a

    :cond_d
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    if-ne p1, v4, :cond_f

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move-object v0, v6

    :goto_9
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    :cond_f
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    if-ne p1, v2, :cond_11

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    move-object v6, v0

    :cond_10
    invoke-direct {p1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    :cond_11
    :goto_a
    return-void
.end method

.method public moveDetailAdapterContentScroll(Landroid/view/View;ZZZ)V
    .locals 0

    return-void
.end method

.method public final notifyGroupAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeGroupDataArrayItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyGroupAdapterItemRemoved parent - Entry  : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v6, ", index :"

    const-string v7, ", isLaunchApp :"

    invoke-static {v4, v5, v6, v0, v7}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMainViewAnimator :"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S.S.N."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    :cond_3
    move v1, v0

    :cond_4
    return v1
.end method

.method public final notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeSubscreenNotificationInfoItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyListAdapterItemRemoved parent - Entry  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", index :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S.S.N."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 0

    return-void
.end method

.method public onDisplayReady()V
    .locals 0

    return-void
.end method

.method public onStateChangedInDeviceStateCallback(Landroid/hardware/devicestate/DeviceState;)V
    .locals 0

    return-void
.end method

.method public onTipButtonClicked()V
    .locals 0

    return-void
.end method

.method public panelsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAODTspReceiver()V
    .locals 0

    return-void
.end method

.method public releaseSmartReply()V
    .locals 0

    return-void
.end method

.method public final removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSmartReplyHashMap(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public replyActivityFinished(Z)V
    .locals 0

    return-void
.end method

.method public runSmartReplyUncompletedOperation()V
    .locals 0

    return-void
.end method

.method public setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setContentViewItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 18

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterContentViewResource()I

    move-result v2

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    const v6, 0x7f0a0358

    const v7, 0x7f0a0359

    const v8, 0x7f0a035b

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v11

    :goto_0
    if-ge v13, v12, :cond_27

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v14, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    const v0, 0x7f0a0360

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/DateTimeView;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    const-string v4, " : "

    if-eqz v0, :cond_1

    if-nez v15, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz v15, :cond_7

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_1
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    if-nez v15, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v15, :cond_6

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    :goto_3
    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_4
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    :cond_7
    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    if-eqz v7, :cond_9

    :try_start_0
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_9
    :goto_6
    if-nez v7, :cond_a

    :goto_7
    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_8
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "SecurityException: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "appName : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SubscreenNotificationDetailAdapter"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_b
    if-nez v7, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    if-nez v7, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-lez v0, :cond_10

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    if-eqz v0, :cond_10

    if-nez v6, :cond_f

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :goto_a
    if-eqz v6, :cond_12

    invoke-virtual {v6, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_b

    :cond_10
    if-nez v6, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v6, v10}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :cond_12
    :goto_b
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v15, :cond_13

    invoke-virtual {v15}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    :cond_13
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    const v6, 0x7f0a0358

    const v7, 0x7f0a0359

    const v8, 0x7f0a035b

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_16
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a035b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0359

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0358

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DateTimeView;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    if-eqz v6, :cond_17

    goto :goto_e

    :cond_17
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    :goto_e
    if-eqz v6, :cond_1b

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_f

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    if-nez v2, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    :cond_1b
    :goto_f
    if-nez v2, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_10
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1f

    if-nez v3, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    if-nez v3, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailContentImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_12
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bindImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_13

    :cond_1f
    if-nez v3, :cond_20

    goto :goto_13

    :cond_20
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_13
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-wide v5, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_22

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    if-eqz v3, :cond_22

    if-nez v4, :cond_21

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :goto_14
    if-eqz v4, :cond_24

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-wide v5, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    invoke-virtual {v4, v5, v6}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_15

    :cond_22
    if-nez v4, :cond_23

    goto :goto_15

    :cond_23
    invoke-virtual {v4, v10}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :cond_24
    :goto_15
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_16

    :cond_25
    const/4 v2, 0x0

    :goto_16
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_17

    :cond_26
    const/4 v9, 0x0

    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    :cond_27
    return-void
.end method

.method public setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 1

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1312eb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f13038d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1312eb

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDimOnMainBackground(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setFullPopupWindowKeyEventListener(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public setGroupAdapterFooterMargin(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setGroupAdapterIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;)V
    .locals 0

    return-void
.end method

.method public setIsReplySendButtonLoading()V
    .locals 0

    return-void
.end method

.method public setItemDecoration(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public setKeyguardStateWhenAddSubscreenNotificationInfoList(Z)V
    .locals 0

    return-void
.end method

.method public setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 0

    return-void
.end method

.method public setListAdpaterPosition(I)V
    .locals 0

    return-void
.end method

.method public setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setQuickReplyFocusBackground(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setReplyWordTextStyle(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    return-void
.end method

.method public setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public setStartedReplyActivity()V
    .locals 0

    return-void
.end method

.method public showAIReply()V
    .locals 0

    return-void
.end method

.method public showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final showSubscreenNotification()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    const-string v1, "S.S.N."

    if-nez v0, :cond_0

    const-string/jumbo p0, "return showSubscreenNotification - subDisplay does not exist"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    const-string/jumbo v2, "showSubscreenNotification Parent - "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isDismissiblePopup()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showSubscreenNotification PopupView - dismiss top presentation if it\'s showing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopPopupLp()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-eqz v5, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v6, :cond_4

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v6, v5, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    const-string v5, "  Noti popup updated - "

    invoke-static {v5, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v6, :cond_8

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v6, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object v0, v2

    :goto_2
    const-string v5, "  Noti popup attached - "

    invoke-static {v5, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_a
    :goto_3
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$2;

    if-nez v0, :cond_c

    move-object v0, v2

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_4

    :cond_d
    move-object v0, v2

    move-object v5, v0

    :goto_4
    iget v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    if-ne v6, v4, :cond_1e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "showSubscreenNotification Presentation - dismiss top popup if it\'s showing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/16 v3, 0x40

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->requestDozeState(IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->drawWalkLockReleaseRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;

    invoke-virtual {v7, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_5

    :cond_f
    move-object v3, v2

    :goto_5
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    goto :goto_6

    :cond_10
    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-eqz v3, :cond_11

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    new-instance v3, Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;-><init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setMaxTimeout(J)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Subscreen:DRAW_WAKE_LOCK: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v3, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_8

    :cond_14
    move-object v0, v2

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  SHOW NEW - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_15

    goto :goto_9

    :cond_15
    move-object v3, v2

    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    if-eqz v6, :cond_16

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    goto :goto_a

    :cond_16
    move-object v6, v2

    :goto_a
    invoke-direct {v0, v3, v5, v6, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    :try_start_0
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$showSubscreenNotification$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$showSubscreenNotification$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->show()V

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_17
    :goto_b
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_c
    const-string v3, "Invalid display: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_18
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    goto :goto_f

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    goto :goto_d

    :cond_1a
    move-object v0, v2

    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_e

    :cond_1b
    move-object v3, v2

    :goto_e
    const-string v4, " SHOW UPDATED - "

    invoke-static {v4, v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v3, :cond_1c

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$updateSubscreenNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Landroid/view/View;)V

    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationTimeoutRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initTimeoutRunnable$1;

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1d
    move-object v2, v0

    :goto_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v0, v2

    :cond_1e
    if-eqz v5, :cond_23

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->marqueeStartRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$marqueeStartRunnable$1;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v7, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object v3, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-wide/32 v8, 0x493e0

    if-eqz v2, :cond_20

    iget-wide v10, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mFullscreenPopUpStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-eqz v2, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v4, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mFullscreenPopUpStartTime:J

    sub-long/2addr v10, v4

    sub-long/2addr v8, v10

    goto :goto_11

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mFullscreenPopUpStartTime:J

    :cond_20
    :goto_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    if-eqz v2, :cond_21

    move-wide v10, v8

    goto :goto_12

    :cond_21
    move-wide v10, v4

    :goto_12
    invoke-virtual {v7, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    goto :goto_13

    :cond_22
    move-wide v8, v4

    :goto_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "  showSubscreenNotification - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public final skipDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "S.S.N."

    if-nez p1, :cond_1

    const-string p1, " TOAST CLICKED parent - entry is null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string p0, " DETAIL CLICKED brief popup "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v3, :cond_3

    const-string p1, " TOAST CLICKED parent - currentPopupViewEntry is null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    return v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " DETAIL CLICKED parent"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSkipFullscreenIntentClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, " DETAIL CLICKED fullscreenIntent so return"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v4
.end method

.method public smallIconPadding(ZZZ)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public squircleRadius(ZZ)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterAODTspReceiver()V
    .locals 0

    return-void
.end method

.method public final updateBModeStatus()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "update bModeUserId : "

    const-string v3, "S.S.N."

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bModeUserId:I

    :cond_2
    return-void
.end method

.method public updateContentScroll()V
    .locals 0

    return-void
.end method

.method public final updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 8

    const-class v0, Lnoticolorpicker/NotificationColorPicker;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v3, v2}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v3

    :goto_1
    const/4 v4, 0x0

    if-eqz p2, :cond_3

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateIconColor() isGrayScale = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S.S.N."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v3, 0x7f0604d5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/16 v5, 0xff

    invoke-static {v5, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_6

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateIconColor() - colorized "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1, p0, p2}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v2

    :cond_6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f060500

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v1, 0x7f060501

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070b70

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method public updateIconContainer(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public updateImportBadgeIconRing(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public updateMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public updateMainHeaderViewVisibility(I)V
    .locals 0

    return-void
.end method

.method public updateMoreNotificationCount(I)V
    .locals 0

    return-void
.end method

.method public updateMoreShadowIconColor(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public final updateNotiShowBlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotification()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTurnOnCoverscreenForNotification()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiFullPopupBlocked:Z

    return-void
.end method

.method public updateSamsungAccount()V
    .locals 0

    return-void
.end method

.method public updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V
    .locals 0

    return-void
.end method

.method public updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->squircleRadius(ZZ)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->smallIconPadding(ZZZ)I

    move-result p0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final updateWakeLock(ZZ)V
    .locals 3

    const-string v0, " updateWakeLock - acquire : "

    const-string v1, ", force : "

    const-string v2, "S.S.N."

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mScreenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mScreenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->isAcquired()Z

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mScreenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public useTopPresentation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
