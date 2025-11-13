.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final clearPipRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

.field public final commonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$configurationListener$1;

.field public final containerOnLayoutChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;

.field public currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

.field public final delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

.field public final dismissMediaRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public isMediaPlaying:Z

.field public isMediaVisible:Z

.field public isNightMode:Z

.field public isUpdateNotAllowed:Z

.field public mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mConfig:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public mIsHeadsUpPinned:Z

.field public mIsOngoingCall:Z

.field public mIsPanelOpen:Z

.field public mLayoutMode:I

.field public mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mMediaCardView:Landroid/view/View;

.field public mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

.field public mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

.field public mParentView:Landroid/view/View;

.field private mSettingChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mStatusBar:Landroid/view/View;

.field public mStatusBarState:Ljava/lang/Integer;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final mediaPanelVisibilityListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$mediaPanelVisibilityListener$1;

.field public final mediaPauseTimerHandler:Landroid/os/Handler;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final notifListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;

.field public final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

.field public final ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final ongoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;

.field public final ongoingChipItemDecoration:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingChipItemDecoration$1;

.field public final remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final screenListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;

.field public final screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;

.field public final statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final taskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

.field public final userChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$userChangedListener$1;

.field public final userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->commonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->taskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    move-object/from16 v3, p16

    invoke-virtual {v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0399

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mMediaCardView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->reinflateMediaFrame()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mSettingChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    const-string v5, "key_now_bar_servicebox_music"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isNightMode:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->clearPipRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->containerOnLayoutChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$userChangedListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$userChangedListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$userChangedListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingChipItemDecoration$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingChipItemDecoration$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingChipItemDecoration:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingChipItemDecoration$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$configurationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->configurationListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$configurationListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->screenListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$mediaPanelVisibilityListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$mediaPanelVisibilityListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPanelVisibilityListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$mediaPanelVisibilityListener$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$removeAllMediaRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$removeAllMediaRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->dismissMediaRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;

    return-void
.end method

.method public static final access$getTaskInfo(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTaskInfo find task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fail. taskInfoList.size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{OngoingActivityController}"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final access$removeOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Clear removingSbnId:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{OngoingActivityCardStackView}"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removingSbnId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningSwipeDismissTopCardMove:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->removeOngoingActivityByKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    return-void
.end method


# virtual methods
.method public final add$2()V
    .locals 2

    const-string/jumbo v0, "{OngoingActivityController}"

    const-string v1, "add()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p2, "   =========================================================================   "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   Live Notifications   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   OngoingActivityController State "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsOngoingCall:Z

    const-string v2, "   isOngoingCall : "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    const-string v2, "   isUpdateNotAllowed : "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isNightMode:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   isNightMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   Delayed list "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "        :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   DataHelper State"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   topComponent : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   Showing list"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->dataDump(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   Hidden list"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->dataDump(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "   Pending list"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->dataDump(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Ljava/io/PrintWriter;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "   Ongoing Activity History "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "       "

    invoke-static {v1, v0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final getMediaDummyNotification(Landroid/app/NotificationManager;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "MediaOngoingActivity"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.ongoingActivityNoti.style"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x1080b7e

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const v0, 0xffffff

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final initCapsuleLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initCapsuleLayout() "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{OngoingActivityController}"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mParentView:Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingChipItemDecoration:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingChipItemDecoration$1;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->screenListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$screenListener$1;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPanelVisibilityListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$mediaPanelVisibilityListener$1;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$userChangedListener$1;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->containerOnLayoutChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->configurationListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$configurationListener$1;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$ongoingCallListener$1;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v16, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->commonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBar:Landroid/view/View;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    move-object v3, v6

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v3, v5}, Lcom/android/systemui/util/NamedListenerSet;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {v12, v15}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    move-object v3, v13

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBar:Landroid/view/View;

    move-object/from16 v18, v1

    if-eqz v3, :cond_3

    const v1, 0x7f0a0a0e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    move-object v1, v10

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->removeCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move-object/from16 v2, v18

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mParentView:Landroid/view/View;

    move-object/from16 v18, v3

    instance-of v3, v1, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    move-object/from16 v19, v7

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    :goto_3
    move-object/from16 v7, p2

    move-object/from16 v21, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v21

    goto :goto_4

    :cond_5
    new-instance v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->customClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    :goto_4
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBar:Landroid/view/View;

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;->touchForwardView:Landroid/view/View;

    :goto_5
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0a0248

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v20, v9

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {v1, v3, v7, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    :goto_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    :cond_9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne v7, v3, :cond_a

    goto :goto_7

    :cond_a
    iput-boolean v7, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :goto_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_b

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_c
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {v12, v15}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    check-cast v13, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBar:Landroid/view/View;

    if-eqz v0, :cond_d

    const v1, 0x7f0a0a0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_d
    move-object v0, v10

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateOngoingList(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final killGhost()V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->commonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    const-string v4, " HIT ghost - "

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " will be killed from OL !!! "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->removeOngoingActivityByKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " will be killed from HL !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->removeOngoingActivityByKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be killed from PL !!! "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->removeOngoingActivityByKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final reinflateMediaFrame()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mMediaCardView:Landroid/view/View;

    const v1, 0x7f0a0c02

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v1, "MediaOngoingActivity"

    const-string/jumbo v2, "reinflate removeMediaFrame / addMediaFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v1, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Lcom/android/systemui/media/MediaType;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0710bf

    invoke-static {v1, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public final remove(I)V
    .locals 2

    const-string/jumbo v0, "position = "

    const-string/jumbo v1, "{OngoingActivityController}"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final shouldVisible()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsHeadsUpPinned:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final start()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->taskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->setBaseActivityComponentName(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    :cond_0
    return-void
.end method

.method public final update(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->update$6()V

    return-void
.end method

.method public final update$6()V
    .locals 2

    const-string/jumbo v0, "{OngoingActivityController}"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    return-void
.end method

.method public final updateAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsOngoingCall:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->shouldShowChipOnly:Z

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final updateMediaChipData()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$updateMediaChipData$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$updateMediaChipData$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mediadata is not added yet. so we try to find it from pending list. and it is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaOngoingActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaPlaying:Z

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-direct {v4, v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    goto/16 :goto_5

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaPlaying:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v1

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v6, :cond_7

    move v4, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    move v4, v3

    :cond_9
    if-le v4, v3, :cond_a

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v5, :cond_b

    move v4, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    move v4, v3

    :cond_d
    if-le v4, v3, :cond_e

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    :cond_f
    :goto_5
    return-void
.end method

.method public final updateParentViewVisibility(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateParentViewVisibility() animate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldVisible()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->shouldVisible()Z

    move-result v0

    const-string v1, "CollapsedStatusBarFragment"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mParentView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "onShowActivityChip() animate:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->$r8$clinit:I

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mParentView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "onHideActivityChip() animate:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->$r8$clinit:I

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    :cond_1
    :goto_0
    return-void
.end method
