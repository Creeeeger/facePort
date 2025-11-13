.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$1:I

.field public final synthetic f$10:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/app/Notification$Builder;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;ZLandroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;ZZLcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$4:Landroid/app/Notification$Builder;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$6:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$7:Z

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$8:Z

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$9:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$10:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$4:Landroid/app/Notification$Builder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$10:Landroid/content/Context;

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;-><init>()V

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$1:I

    and-int/lit8 v10, v9, 0x1

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$3:Z

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$5:Z

    if-eqz v10, :cond_6

    const-string v10, "creating contracted remote view"

    invoke-virtual {v12, v8, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    sget-object v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getPendingOngoingActivityData(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    :cond_0
    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v10, :cond_4

    if-eqz v13, :cond_1

    iget-object v15, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-virtual {v15, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_0

    :cond_1
    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    :goto_0
    iput-object v10, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    :cond_6
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_d

    const-string v10, "creating expanded remote view"

    invoke-virtual {v12, v8, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    sget-object v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getPendingOngoingActivityData(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    if-nez v10, :cond_7

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    :cond_7
    iget-object v15, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v10, :cond_a

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_1

    :cond_9
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v10

    if-eqz v10, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v10

    invoke-static {v10}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_c
    const/4 v10, 0x0

    :goto_1
    iput-object v10, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    :cond_d
    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_10

    const-string v10, "creating promoted ongoing card view"

    invoke-virtual {v12, v8, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    sget-object v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v14, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getPendingOngoingActivityData(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    if-nez v10, :cond_e

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v10

    :cond_e
    iget-object v14, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v14

    if-eqz v14, :cond_f

    if-eqz v10, :cond_f

    iget-object v15, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    goto :goto_2

    :cond_f
    const/4 v15, 0x0

    :goto_2
    iput-object v15, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPromotedOngoingView:Landroid/widget/RemoteViews;

    :cond_10
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_12

    const-string v10, "creating heads up remote view"

    invoke-virtual {v12, v8, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$6:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;->shouldApplyCompactStyle()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->createCompactHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    goto :goto_3

    :cond_11
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$7:Z

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    :cond_12
    :goto_3
    const/16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_13

    const-string v9, "creating public remote view"

    invoke-virtual {v12, v8, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$8:Z

    invoke-virtual {v4, v13, v8}, Landroid/app/Notification$Builder;->makePublicContentView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    :cond_13
    sget v8, Lcom/android/systemui/statusbar/notification/row/shared/AsyncGroupHeaderViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->f$9:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    invoke-interface {v0, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v9

    if-eqz v8, :cond_14

    invoke-virtual {v8, v9}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_14
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    invoke-interface {v0, v7, v2}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v2

    if-eqz v8, :cond_15

    invoke-virtual {v8, v2}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_15
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    invoke-interface {v0, v7, v1}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v1

    if-eqz v2, :cond_16

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_16
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    invoke-interface {v0, v7, v10}, Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;->provide(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory;

    move-result-object v0

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V

    :cond_17
    iput-object v5, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    return-object v6
.end method
