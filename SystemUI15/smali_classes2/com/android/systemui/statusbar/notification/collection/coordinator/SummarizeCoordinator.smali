.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# instance fields
.field private DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mCommonNotifCollectionLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mPanelState:I

.field private final mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mSummarizeController:Lcom/android/systemui/statusbar/SummarizeController;

.field private mSummarizeEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommonNotifCollectionLazy(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSummarizeController(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Lcom/android/systemui/statusbar/SummarizeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeController:Lcom/android/systemui/statusbar/SummarizeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSummarizeEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmSummarizeEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/SummarizeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/statusbar/SummarizeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SummarizeCoordinator"

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->DEBUG:Z

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeController:Lcom/android/systemui/statusbar/SummarizeController;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method

.method public onPanelStateChanged(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mPanelState:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mPanelState:I

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeEnabled:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onPanelStateChanged Panel state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mPanelState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " StatusBar state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SummarizeCoordinator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    if-nez v1, :cond_1d

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;->mSummarizeController:Lcom/android/systemui/statusbar/SummarizeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, " updatePendingSummarize start"

    const-string v2, "SummarizeController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/SummarizeController;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " update pending summarize "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/SummarizeController;->updateSummarize(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/SummarizeController;->mNotificationSummaryStringSet:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflateDone:Z

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    const-class v7, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v6}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-class v8, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v6}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v7, :cond_8

    if-nez v8, :cond_8

    goto/16 :goto_b

    :cond_8
    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v12, 0x0

    const-string v13, "Summarize"

    if-nez v11, :cond_9

    const-string v10, " checkCollapsedEllipsis mContractedChild is null "

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v10, v12

    goto :goto_3

    :cond_9
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v11, :cond_a

    const-string v10, " checkCollapsedEllipsis : mContainingNotification is null"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v10

    if-nez v10, :cond_b

    const-string v10, " checkCollapsedEllipsis : wrapper is null"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isEllipsis()I

    move-result v10

    :goto_3
    iget-object v11, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v14, v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v14, :cond_c

    const-string v11, " checkExpandedEllipsis mContractedChild is null "

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v11, v12

    goto :goto_5

    :cond_c
    iget-object v14, v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v14, :cond_d

    const-string v11, " checkExpandedEllipsis : mContainingNotification is null"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v11

    if-nez v11, :cond_e

    const-string v11, " checkExpandedEllipsis : wrapper is null"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isEllipsis()I

    move-result v11

    :goto_5
    const-string v13, "collapsedEllipsis: "

    const-string v14, " expandedEllipsis:"

    const-string v15, " key:"

    invoke-static {v10, v11, v13, v14, v15}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v11, v13, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iput-boolean v12, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSummarizeDone:Z

    :cond_f
    if-ne v10, v3, :cond_1c

    const-string v10, ""

    if-eqz v7, :cond_15

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/app/NotificationManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v16

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x14

    invoke-virtual/range {v13 .. v19}, Landroid/app/NotificationManager;->semGetNotificationHistoryForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_11

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v13, "isChecked"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    const-string v8, "\n"

    if-eqz v6, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "histories.size()  = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v11, :cond_12

    goto/16 :goto_b

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v5, v6, v10}, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/SummarizeController;JI)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/SummarizeController;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v10, v5

    goto :goto_8

    :cond_13
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.messages"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v6, v5

    if-ge v6, v11, :cond_14

    goto :goto_8

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v9, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v6, v7, v10}, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/SummarizeController;JI)V

    invoke-interface {v5, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda2;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/statusbar/SummarizeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/SummarizeController;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    :cond_15
    if-eqz v8, :cond_16

    iget-object v7, v0, Lcom/android/systemui/statusbar/SummarizeController;->mEmailAppList:Ljava/util/List;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.bigText"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_16
    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    :goto_9
    if-ge v12, v6, :cond_1a

    aget-char v7, v5, v12

    const v8, 0xac00

    if-lt v7, v8, :cond_17

    const v8, 0xd7a3

    if-le v7, v8, :cond_18

    :cond_17
    const/16 v8, 0x1100

    if-lt v7, v8, :cond_19

    const/16 v8, 0x11ff

    if-gt v7, v8, :cond_19

    :cond_18
    const/16 v5, 0x384

    goto :goto_a

    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_1a
    const/16 v5, 0x708

    :goto_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_1b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_b

    :cond_1b
    move-object v9, v10

    :cond_1c
    :goto_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/SummarizeController;->mSrResponseCallback:Lcom/android/systemui/statusbar/SummarizeController$1;

    iget-object v6, v0, Lcom/android/systemui/statusbar/SummarizeController;->mPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    invoke-interface {v6, v4, v9, v5}, Lnotification/src/com/android/systemui/BasePromptProcessor;->summary(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/SummarizeController$1;)V

    goto/16 :goto_1

    :cond_1d
    return-void
.end method
