.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    return-void
.end method


# virtual methods
.method public final onInflationFinished(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderLogger$logInflatedRow$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderLogger$logInflatedRow$2;

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v7, "NotificationRowBinder"

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v4

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mExpandableNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    check-cast v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ExpandableNotificationRowComponentBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ExpandableNotificationRowComponentBuilder;->expandableNotificationRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v6, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ExpandableNotificationRowComponentBuilder;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ExpandableNotificationRowComponentBuilder;->onExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ExpandableNotificationRowComponentBuilder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;->getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    move-result-object v3

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v23, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v28, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    move-object/from16 v29, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v30, v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRemoteInputViewSubcomponentFactory:Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;

    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAppName:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationKey:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mLoggerCallback:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;

    iget-object v11, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v12, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v13, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    iget-object v14, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v15, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-object/from16 v16, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v17, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v18, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    move-object/from16 v19, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    move-object/from16 v20, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object/from16 v21, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    move-object/from16 v22, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mChildrenContainerLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;

    move-object/from16 v24, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mColorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-object/from16 v25, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    move-object/from16 v26, v4

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object/from16 v27, v4

    move-object v4, v6

    invoke-virtual/range {v5 .. v30}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initialize(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/dagger/RemoteInputViewSubcomponent$Factory;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$2;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainerLogger;Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;)V

    const/high16 v5, 0x60000

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mAllowLongPress:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v7, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v7, v5}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    iput-object v5, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mDragController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    :cond_0
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-object v5, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$$ExternalSyntheticLambda0;

    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v5, :cond_2

    const/high16 v5, 0x20000

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    sget-object v3, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object v3, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-object v1, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logManagedRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->logManagedRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    iput-object v1, v5, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_4
    :goto_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->updateRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateContentViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setMessageUriToBitmap(Landroid/content/Context;)V

    :cond_6
    return-void
.end method
