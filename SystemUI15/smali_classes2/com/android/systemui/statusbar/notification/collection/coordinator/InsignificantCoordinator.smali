.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# instance fields
.field private final CHANNEL_ID:Ljava/lang/String;

.field private DEBUG:Z

.field private final DISMISS_INSIGNIFICANT_CHILD:I

.field private TAG:Ljava/lang/String;

.field private final UPDATE_INSIGNIFICANT_SUMMARY_ALL:I

.field private final UPDATE_INSIGNIFICANT_SUMMARY_VISIBLE:I

.field private mBarState:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommonNotifCollectionLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDebugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

.field private final mInsiginificantHandler:Landroid/os/Handler;

.field private final mInsignificantNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

.field private final mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private final mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private final mSilentNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field mTimeSortCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

.field private mWaitingForGroupSummary:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mBarState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommonNotifCollectionLazy(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeadsUpManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsiginificantHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockscreenUserManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitingForGroupSummary(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mBarState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitingForGroupSummary(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetInsignificant(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->resetInsignificant()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInsignificantSummary(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->updateInsignificantSummary(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "InsignificantCoordinator"

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->DEBUG:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    const-string v3, "INSIGNIFICANT"

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->CHANNEL_ID:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->UPDATE_INSIGNIFICANT_SUMMARY_VISIBLE:I

    iput v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->DISMISS_INSIGNIFICANT_CHILD:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->UPDATE_INSIGNIFICANT_SUMMARY_ALL:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/net/Uri;

    const-string v6, "noti_filter_promotion_notification"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "noti_filter_background_notification"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "noti_filter_low_importance_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "noti_filter_old_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$3;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;

    const-string v6, "Insignificant"

    const/16 v7, 0xd

    invoke-direct {v4, p0, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Ljava/lang/String;I)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsignificantNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$7;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$8;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsiginificantHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$9;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mContext:Landroid/content/Context;

    move-object v7, p2

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSilentNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-object v7, p1

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-object v7, p4

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mTimeSortCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    move-object v7, p6

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mDebugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    move-object v7, p7

    check-cast v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    :cond_0
    return-void
.end method

.method private isDesktopLauncherFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "desktop_launcher_chnnel_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDeviceProvisionedFilterOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.allowDuringSetup"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEdgeLightFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "edge_lighting_chnnel_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetInsignificant()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SettingValue changed Promotion : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantPromotion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " BG activities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantBgActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Minimized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantMinimized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableInsignificantOld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundColors()V

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->updateInsignificantSummary(Z)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x7b

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "INSIGNIFICANT"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_1
    return-void
.end method

.method private updateInsignificantSummary(Z)V
    .locals 11

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "INSIGNIFICANT"

    const/4 v7, 0x1

    if-eqz v5, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    check-cast v8, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v6, v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    if-ne v6, v7, :cond_3

    move v3, v7

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v8, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mDebugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_0

    :goto_2
    move v3, v7

    goto :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v8, v8, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v8, :cond_8

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->isDeviceProvisionedFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v8, :cond_9

    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    check-cast v8, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_a
    const/16 v8, 0x100

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_b
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_c
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->isDesktopLauncherFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->isEdgeLightFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto/16 :goto_0

    :cond_e
    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    const-string v3, "Insignificant summary filtered out by other condition "

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 v3, 0x7b

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    const-string v0, "no update for Insignificant summary, there is no notifications "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v6, v3, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    if-nez v5, :cond_13

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mTimeSortCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v4, :cond_12

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_12

    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mInsigificantChildrenList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mInsigificantChildrenList:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "update summary with firstEntry : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v5

    goto :goto_4

    :cond_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "update summary without child"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_ALL:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mSubscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMoreNotificationCount(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f110018

    invoke-virtual {v0, v5, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f130d41

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->INSIGNIFICANT:Ljava/lang/String;

    invoke-direct {v4, v5, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    if-eqz p1, :cond_15

    const p1, 0x7f080969

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_15
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.substName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v6, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->TAG:Ljava/lang/String;

    const-string v0, "mWaitingForGroupSummary = false updateSummary again for children count"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mWaitingForGroupSummary:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsiginificantHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsiginificantHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInsignificantSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mInsignificantNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method
