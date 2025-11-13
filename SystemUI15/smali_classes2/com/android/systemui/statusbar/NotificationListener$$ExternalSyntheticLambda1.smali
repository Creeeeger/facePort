.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/Object;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v3, v2, v0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v2, [Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v7}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {v0, v9, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v18, v8

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v19, v8

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v26, v8

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v27, v8

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object v8, v7

    invoke-virtual/range {v8 .. v35}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZ)V

    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    new-array v4, v5, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    array-length v3, v2

    :goto_2
    if-ge v5, v3, :cond_4

    aget-object v4, v2, v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v7, v4, v0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationsInitialized()V

    goto :goto_4

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
