.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 3

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.incallui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsOngoingCall:Z

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_ONGOING_GEMINI_DEMO:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->isExceptionalOngoingActivity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    if-eqz p2, :cond_2

    const-string p2, "NOT allowed"

    goto :goto_0

    :cond_2
    const-string p2, "allowed"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEntryRemoved() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is and remove is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "{OngoingActivityController}"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$removeOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, " is REMOVED "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;->add(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 20

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$notifListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsOngoingCall:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsOngoingCall:Z

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v0

    const-string v10, ""

    const-string/jumbo v11, "{OngoingActivityController}"

    iget-object v12, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_ONGOING_GEMINI_DEMO:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->isExceptionalOngoingActivity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v9, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$removeOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_11

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-nez v0, :cond_4

    move v13, v8

    goto :goto_2

    :cond_4
    move v13, v7

    :goto_2
    if-eqz v13, :cond_5

    const-string v0, "added"

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "updated"

    :goto_3
    iget-boolean v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    if-eqz v1, :cond_6

    const-string v1, "NOT allowed"

    goto :goto_4

    :cond_6
    const-string v1, "allowed"

    :goto_4
    const-string v2, "onEntryUpdated() "

    const-string v3, " is "

    const-string v4, " and update is "

    invoke-static {v2, v12, v3, v0, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v1, v11}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaOngoingActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x0

    const-string/jumbo v15, "updateOngoingActivity data: "

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_7
    move v0, v7

    :goto_5
    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    invoke-direct {v0, v10, v7, v14, v14}, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    if-eqz v1, :cond_9

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaPlaying:Z

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsPlayingMediaOngoingActivity:Ljava/lang/Boolean;

    :goto_6
    move-object v0, v1

    :cond_9
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-nez v1, :cond_b

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v8

    goto :goto_8

    :cond_b
    :goto_7
    move v1, v7

    :goto_8
    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnHideRawValueChangedListeners:Lcom/android/systemui/util/ListenerSet;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOnHideRawValueChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    invoke-virtual {v0, v4}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    if-nez v1, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move v0, v8

    goto/16 :goto_10

    :cond_e
    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-nez v1, :cond_10

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_10

    move/from16 v16, v8

    goto :goto_a

    :cond_10
    :goto_9
    move/from16 v16, v7

    :goto_a
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_ONGOING_GEMINI_DEMO:Z

    if-eqz v1, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->isExceptionalOngoingActivity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    const v0, 0x7f060537

    invoke-virtual {v5, v0}, Landroid/content/Context;->getColor(I)I

    move-result v17

    const v0, 0x7f080d4b

    invoke-static {v5, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v18

    const/4 v3, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v14, v4

    move/from16 v4, v17

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;IILandroid/graphics/drawable/Icon;)V

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_15

    check-cast v3, Landroid/app/Notification$Action;

    if-eqz v2, :cond_14

    if-eq v2, v8, :cond_11

    move-object/from16 v8, v19

    move-object/from16 v19, v1

    goto :goto_e

    :cond_11
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string v7, "LIVE_NOTIFICATION_ACTION_KEY"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    const-string v7, "ACTION_CONVERSATION_HOLD"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    sget-object v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    if-eqz v5, :cond_13

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiPlayStateChanged(Z)V

    const v5, 0x7f080a78

    goto :goto_d

    :cond_13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiPlayStateChanged(Z)V

    const v5, 0x7f080933

    :goto_d
    new-instance v7, Landroid/app/Notification$Action$Builder;

    move-object/from16 v8, v19

    invoke-static {v8, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    move-object/from16 v19, v1

    iget-object v1, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v7, v5, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    goto :goto_e

    :cond_14
    move-object/from16 v8, v19

    move-object/from16 v19, v1

    new-instance v1, Landroid/app/Notification$Action$Builder;

    const v5, 0x7f080d49

    invoke-static {v8, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v7, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, v5, v7, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    :goto_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    move-object/from16 v1, v19

    const/4 v7, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x1

    goto/16 :goto_b

    :cond_15
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_16
    move-object/from16 v8, v19

    move-object v4, v14

    goto :goto_f

    :cond_17
    move-object v8, v5

    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-direct {v4, v6, v0, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V

    :goto_f
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnHideRawValueChangedListeners:Lcom/android/systemui/util/ListenerSet;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOnHideRawValueChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;-><init>(Landroid/content/Context;)V

    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    iget-object v2, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    if-eqz v1, :cond_19

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0283

    invoke-direct {v1, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_18

    const v5, 0x7f0a086a

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "createNowBarView: use full custom view ("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "{OngoingActivityLayoutCreator}"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0a0870

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    :cond_18
    iput-object v1, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    :cond_19
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createExpandView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object v1, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createCollapsedView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object v1, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createCoverScreenView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    if-nez v16, :cond_1a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    if-eqz v13, :cond_1b

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    const-string v1, "SBOA0001"

    invoke-static {v0, v1, v6}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1b
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, " is ADDED "

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;->add(Ljava/lang/String;)Z

    :cond_1c
    :goto_11
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_NOW_BAR_DEMO:Z

    if-eqz v0, :cond_25

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.messages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1d

    goto/16 :goto_14

    :cond_1d
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "triggerTest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "morning"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_13

    :cond_1f
    const-string v0, "7"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.google.android.samples.ambient.app.test"

    if-eqz v0, :cond_20

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.samples.ambient.app.test.SIMULATE_GAMES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    :cond_20
    const-string v0, "8"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.samples.ambient.app.test.END_WRITE_SESSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    :cond_21
    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.example.sanavditest"

    if-eqz v0, :cond_22

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "order.complete.baemin"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    :cond_22
    const-string v0, "2"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "start.delievery"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    :cond_23
    const-string v0, "3"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "finish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    :goto_13
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockVisible:Z

    goto :goto_14

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockVisible:Z

    :cond_25
    :goto_14
    return-void
.end method
