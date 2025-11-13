.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;


# static fields
.field public static final BUBBLES_SETTING_URI:Landroid/net/Uri;


# instance fields
.field public final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field public final mAllowLongPress:Z

.field public final mAppName:Ljava/lang/String;

.field public final mBubblesManagerOptional:Ljava/util/Optional;

.field public final mChildrenContainerLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mColorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

.field public final mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

.field public final mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mLogBufferLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;

.field public final mLoggerCallback:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mNotificationKey:Ljava/lang/String;

.field public final mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

.field public final mOnFeedbackClickListener:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field public final mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

.field public final mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mRemoteInputViewSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

.field public final mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field public final mSettingsController:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

.field final mSettingsListener:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

.field public final mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field public final mStatsLogger:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationRowStatsLogger;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;

.field public final mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "notification_bubbles"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->BUBBLES_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/time/SystemClock;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationRowStatsLogger;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;ZLcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;",
            "Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationRowStatsLogger;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Z",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsListener:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLoggerCallback:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRemoteInputViewSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAppName:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationKey:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatsLogger:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationRowStatsLogger;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-static/range {p23 .. p23}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAllowLongPress:Z

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsController:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mChildrenContainerLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mColorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLogBufferLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowLogger;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    return-void
.end method


# virtual methods
.method public final addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getNodeLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public final moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method public final offerToKeepInParentForAnimation()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->PARENT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onViewAdded()V
    .locals 0

    return-void
.end method

.method public final onViewRemoved()V
    .locals 0

    return-void
.end method

.method public final removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    if-nez p2, :cond_1

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public final removeFromParentIfKeptForAnimation()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final resetKeepInParentForAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParentForDismissAnimation:Z

    return-void
.end method
