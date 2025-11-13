.class public final Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public rebuildWithRemoteInputInserted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;ZLjava/lang/String;Landroid/net/Uri;)Landroid/service/notification/StatusBarNotification;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "android.remoteInputHistoryItems"

    const/4 v9, 0x0

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputs:Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputs:Ljava/util/List;

    :cond_0
    if-nez v1, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    new-instance v6, Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v6, v2, v3, v1}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v6, Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v6, v1}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputs:Ljava/util/List;

    invoke-interface {v1, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    :goto_1
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;

    :cond_5
    :goto_2
    move/from16 v0, p3

    goto :goto_5

    :cond_6
    if-nez v1, :cond_7

    if-eqz v3, :cond_5

    :cond_7
    if-eqz v3, :cond_8

    new-instance v0, Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v0, v2, v3, v1}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v0, v1}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    goto :goto_4

    :cond_9
    new-array v1, v7, [Landroid/app/RemoteInputHistoryItem;

    aput-object v0, v1, v9

    move-object v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;

    goto :goto_2

    :goto_5
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setHideSmartReplies(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, v15, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, v15, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v13

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v14

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v0
.end method
