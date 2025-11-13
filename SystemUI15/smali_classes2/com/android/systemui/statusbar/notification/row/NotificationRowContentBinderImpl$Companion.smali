.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;-><init>()V

    return-void
.end method

.method public static final access$apply(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;
    .locals 23

    move-object/from16 v14, p0

    move-object/from16 v13, p4

    move-object/from16 v12, p7

    move-object/from16 v11, p8

    move-object/from16 v10, p11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NotificationRowContentBinderImpl#apply"

    invoke-static/range {p8 .. p8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v9, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v8, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    and-int/lit8 v0, p5, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    move-object/from16 v3, p6

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v3, v12, v5}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$1;

    invoke-direct {v2, v10, v12, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;)V

    const-string v0, "applying contracted view"

    invoke-virtual {v10, v12, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move/from16 v2, p2

    move-object/from16 v19, v3

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v21, v7

    move-object/from16 v7, v19

    move-object/from16 v22, v8

    move-object/from16 v8, p7

    move-object/from16 v19, v9

    move-object/from16 v9, p8

    move/from16 v10, v16

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, v19

    move-object/from16 v14, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move-object/from16 v18, p11

    invoke-virtual/range {v0 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    goto :goto_0

    :cond_0
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    :goto_0
    and-int/lit8 v0, p5, 0x2

    const/4 v14, 0x2

    if-eqz v0, :cond_1

    move-object/from16 v13, p4

    iget-object v0, v13, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    move-object/from16 v7, p6

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-object/from16 v12, p7

    invoke-virtual {v7, v12, v14}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v16, v0, 0x1

    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$2;

    move-object/from16 v8, p11

    invoke-direct {v9, v8, v12, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;)V

    const-string v0, "applying expanded view"

    invoke-virtual {v8, v12, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v5, v19

    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v15

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    move/from16 v5, p5

    move-object/from16 v8, p7

    move-object/from16 v18, v9

    move-object/from16 v9, p8

    move/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, v19

    move-object/from16 v14, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move-object/from16 v18, p11

    invoke-virtual/range {v0 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    goto :goto_1

    :cond_1
    const/16 v20, 0x1

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move-object/from16 v14, p4

    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    move-object/from16 v7, p6

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    const/4 v1, 0x4

    move-object/from16 v13, p7

    invoke-virtual {v7, v13, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object/from16 v12, p0

    invoke-virtual {v12, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$3;

    move-object/from16 v9, p11

    invoke-direct {v11, v9, v13, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;)V

    const-string v0, "applying heads up view"

    invoke-virtual {v9, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v8, v19

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v15

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v16, v5

    move/from16 v5, p5

    move-object/from16 v17, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v18, v11

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move-object/from16 v18, p11

    invoke-virtual/range {v0 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_2
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_3

    move-object/from16 v14, p4

    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->public:Landroid/widget/RemoteViews;

    move-object/from16 v7, p6

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    const/16 v1, 0x8

    move-object/from16 v13, p7

    invoke-virtual {v7, v13, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    new-instance v12, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$4;

    move-object/from16 v11, p11

    invoke-direct {v12, v11, v13, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$applyCallback$4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;)V

    const-string v0, "applying public view"

    invoke-virtual {v11, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v9, v22

    iget-object v8, v9, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v15

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v16, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v9

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v18, v12

    move-object/from16 v12, p10

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v18

    move-object/from16 v18, p11

    invoke-virtual/range {v0 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_3
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, v21

    move-object/from16 v4, p10

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$1;

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p11

    move-object/from16 v5, v21

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$apply$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v0
.end method

.method public static final access$beginInflationAsync(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v5, p11

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->processNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "NotificationContentInflater.createRemoteViews"

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    and-int/lit8 v6, p1, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    const-string v6, "creating contracted remote view"

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_2

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move/from16 v6, p5

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v6

    :goto_0
    move-object v10, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    move-object v10, v8

    :goto_1
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_6

    const-string v6, "creating expanded remote view"

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-static {v6}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    goto :goto_2

    :cond_5
    move-object v6, v8

    :goto_2
    move-object v12, v6

    goto :goto_3

    :cond_6
    move-object v12, v8

    :goto_3
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_8

    const-string v6, "creating heads up remote view"

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v6, p10

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;->shouldApplyCompactStyle()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/app/Notification$Builder;->createCompactHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v6

    :goto_4
    move-object v11, v6

    goto :goto_5

    :cond_7
    move/from16 v6, p6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v6

    goto :goto_4

    :cond_8
    move-object v11, v8

    :goto_5
    const/16 v6, 0x8

    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_9

    const-string v9, "creating public remote view"

    invoke-virtual {v4, v0, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p4}, Landroid/app/Notification$Builder;->makePublicContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object v13, v0

    goto :goto_6

    :cond_9
    move-object v13, v8

    :goto_6
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    invoke-interface {v3, v2, v9}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_a
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_b

    const/4 v10, 0x2

    invoke-interface {v3, v2, v10}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_b
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    const/4 v10, 0x4

    invoke-interface {v3, v2, v10}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_c
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->public:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    invoke-interface {v3, v2, v6}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_e
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/shared/HeadsUpStatusBarModel;

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/shared/HeadsUpStatusBarModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/shared/NotificationContentModel;

    invoke-direct {v1, v0, v8}, Lcom/android/systemui/statusbar/notification/row/shared/NotificationContentModel;-><init>(Lcom/android/systemui/statusbar/notification/row/shared/HeadsUpStatusBarModel;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/SingleLineViewModel;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    move-object/from16 v2, p7

    invoke-direct {v0, v2, v4, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;Lcom/android/systemui/statusbar/notification/row/shared/NotificationContentModel;)V

    return-object v0

    :goto_7
    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_f
    throw v0
.end method

.method public static final access$inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p0, p2, 0x1

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    iget-object p2, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-nez p0, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string p0, "inflating contracted smart reply state"

    invoke-virtual {p8, p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object p0, p7

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    :cond_4
    if-eqz v3, :cond_5

    const-string p0, "inflating expanded smart reply state"

    invoke-virtual {p8, p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p7

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_5
    if-eqz v0, :cond_6

    const-string p0, "inflating heads up smart reply state"

    invoke-virtual {p8, p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p7

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    move-object v1, p4

    move-object v2, p5

    move-object v3, p3

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_6
    return-void
.end method

.method public static finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    return v3

    :cond_0
    iget-object p3, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v4, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const-string v5, "finishing"

    invoke-virtual {p7, p5, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_2

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedContentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    if-eqz p7, :cond_1

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object p7, v5, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v5, p5, v2, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v2}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->contracted:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_2
    :goto_0
    and-int/lit8 p7, p1, 0x2

    const/4 v5, 0x0

    if-eqz p7, :cond_9

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    if-eqz p7, :cond_3

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    iget-object p7, v6, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    move-object v7, p2

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v7, p5, v1, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_3
    iget-object p7, v6, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    if-nez p7, :cond_4

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    :cond_4
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v1, v7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_5
    :goto_1
    iget-object p7, v6, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->expanded:Landroid/widget/RemoteViews;

    if-eqz p7, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    iput-object v1, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    if-nez v1, :cond_7

    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    goto :goto_2

    :cond_6
    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_7
    :goto_2
    if-eqz p7, :cond_8

    move p7, v2

    goto :goto_3

    :cond_8
    move p7, v3

    :goto_3
    iput-boolean p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    iget-object p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable$1()Z

    move-result v1

    invoke-virtual {p7, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    :cond_9
    and-int/lit8 p7, p1, 0x4

    if-eqz p7, :cond_e

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    if-eqz p7, :cond_a

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    iget-object p7, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    move-object v3, p2

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v3, p5, v0, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_4

    :cond_a
    iget-object p7, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    if-nez p7, :cond_b

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_4

    :cond_b
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_c
    :goto_4
    iget-object p7, v1, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->headsUp:Landroid/widget/RemoteViews;

    if-eqz p7, :cond_d

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    :cond_e
    :goto_5
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    if-eqz p7, :cond_f

    iput-object p7, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    :cond_f
    const/16 p3, 0x8

    and-int/2addr p1, p3

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->inflatedPublicView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->remoteViews:Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;

    if-eqz p1, :cond_10

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->public:Landroid/widget/RemoteViews;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p2, p5, p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_6

    :cond_10
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p2, p5, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/shared/NewRemoteViews;->public:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p5, p3, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_11
    :goto_6
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    sget p0, Lcom/android/systemui/statusbar/notification/row/shared/NotificationRowContentBinderRefactor;->$r8$clinit:I

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "New code path expects com.android.systemui.notification_row_content_binder_refactor to be enabled."

    invoke-static {p0}, Lcom/android/systemui/flags/RefactorFlagUtils;->assertOnEngBuild(Ljava/lang/String;)V

    const-string p0, "NotificationRowContentBinderImpl#apply"

    invoke-static {p6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    if-eqz p4, :cond_12

    invoke-interface {p4, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_12
    return v2
.end method

.method public static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p4, p2, p5, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object p4, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$handleInflationError$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$handleInflationError$1;

    invoke-interface {p0, p4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "ZZ",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Z",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    move-object/from16 v2, p8

    move-object/from16 v14, p11

    move-object/from16 v13, p14

    move-object/from16 v12, p16

    invoke-virtual/range {p17 .. p17}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v11

    if-eqz p2, :cond_5

    if-eqz p10, :cond_1

    :try_start_0
    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v10, p13

    invoke-virtual {v11, v1, v10, v14}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v8, p17

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v1, p9

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v1, "Required value was null."

    if-eqz v13, :cond_4

    if-eqz p15, :cond_3

    :try_start_1
    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v13, v14}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual/range {p9 .. p9}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v13, v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "applying view synchronously"

    move-object/from16 p0, p16

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, p12

    move-object/from16 p4, p18

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_5
    move-object/from16 v1, p9

    move-object/from16 v10, p13

    move-object/from16 v8, p17

    new-instance v18, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;

    move-object/from16 v0, v18

    move-object/from16 v2, p8

    move-object/from16 v3, p16

    move-object/from16 v4, p12

    move-object/from16 v5, p18

    move/from16 v6, p6

    move/from16 v7, p10

    move-object/from16 v9, p15

    move-object/from16 v10, p4

    move-object/from16 v19, v11

    move/from16 v11, p3

    move/from16 v12, p5

    move-object/from16 v13, p7

    move-object/from16 v14, v19

    move-object/from16 v15, p13

    move-object/from16 v16, p11

    move-object/from16 v17, p14

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;IZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;)V

    if-eqz p10, :cond_6

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v2, p13

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v2, p14

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p16

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method public final isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    iget p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez p2, :cond_1

    iget-object p2, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez p2, :cond_1

    iget-object p0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_4

    :cond_1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p2, "NotificationContentInflater#satisfiesMinHeightRequirement"

    invoke-static {p2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const v2, 0x7f070bc1

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    const v0, 0x7f070bc0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, p3, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    const-string p0, "inflated notification does not meet minimum height requirement"

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw p1
.end method
