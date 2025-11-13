.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActionBgColors:Ljava/util/ArrayList;

.field public final mActionType:I

.field public final mActions:Ljava/util/ArrayList;

.field public final mAppIcon:Landroid/graphics/drawable/Icon;

.field public final mAppName:Ljava/lang/String;

.field public final mCardIcon:Landroid/graphics/drawable/Icon;

.field public final mCardIconBg:Ljava/lang/Integer;

.field public final mChipBackground:I

.field public final mChipIcon:Landroid/graphics/drawable/Icon;

.field public final mChronometerPosition:I

.field public final mChronometerTag:Ljava/lang/String;

.field public final mChronometerView:Landroid/widget/RemoteViews;

.field public final mCustomExpandedCardView:Landroid/widget/RemoteViews;

.field public final mCustomNowBarView:Landroid/widget/RemoteViews;

.field public final mDescription:Ljava/lang/String;

.field public final mExpandedChipText:Ljava/lang/CharSequence;

.field public final mExpandedChipView:Landroid/widget/RemoteViews;

.field public final mFirstIcon:Landroid/graphics/drawable/Icon;

.field public final mIsMediaOngoingData:Z

.field public mNeedMarquee:Ljava/lang/Boolean;

.field public final mNotiID:Ljava/lang/String;

.field public final mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mNowbarChronometerPosition:I

.field public final mNowbarIcon:Landroid/graphics/drawable/Icon;

.field public final mNowbarPrimaryInfo:Ljava/lang/String;

.field public final mNowbarSecondaryInfo:Ljava/lang/String;

.field public mOngoingCollapsedView:Landroid/widget/RemoteViews;

.field public mOngoingCoverView:Landroid/widget/RemoteViews;

.field public mOngoingExpandView:Landroid/widget/RemoteViews;

.field public mOngoingNowbarView:Landroid/widget/RemoteViews;

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mPrimaryActionIndex:I

.field public final mPrimaryInfo:Ljava/lang/String;

.field public final mProgress:I

.field public final mProgressColor:I

.field public final mProgressIndeterminate:Z

.field public final mProgressMax:I

.field public final mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

.field public final mProgressSegments:[Landroid/os/Parcelable;

.field public final mSecondIcon:Landroid/graphics/drawable/Icon;

.field public final mSecondaryInfo:Ljava/lang/String;

.field public final mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

.field public final mStyle:I

.field public final mUserId:I

.field public final mWhen:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;IILandroid/graphics/drawable/Icon;)V
    .locals 47

    move-object/from16 v15, p1

    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/Collection;[Ljava/lang/Object;)V

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    :goto_0
    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v5, "No primary info"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v12, v0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v12, v5

    :goto_2
    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v13, v0

    goto :goto_5

    :cond_4
    :goto_4
    const-string v0, "No secondary info"

    goto :goto_3

    :goto_5
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move-object/from16 v30, v0

    goto :goto_7

    :cond_6
    :goto_6
    move-object/from16 v30, v5

    :goto_7
    const/4 v0, 0x0

    new-array v6, v0, [Landroid/os/Parcelable;

    iget-object v4, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.ongoingActivityNoti.progressSegments.progressColor"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v38

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Landroid/app/Notification;->loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v4, v0, Landroid/app/Notification;->when:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v42

    const/16 v37, 0x0

    const/16 v44, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const-string v33, ""

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p4

    move-object/from16 v41, v6

    move/from16 v6, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v30

    move-object/from16 v30, v41

    move-object/from16 v41, p5

    move-object/from16 v43, p1

    invoke-direct/range {v0 .. v46}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V
    .locals 51

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.ongoingActivityNoti.chipIcon"

    const-class v4, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.ongoingActivityNoti.chipExpandedView"

    const-class v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.ongoingActivityNoti.chipBgColor"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.ongoingActivityNoti.actionPrimarySet"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.ongoingActivityNoti.actionType"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection(Ljava/util/Collection;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v9, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.ongoingActivityNoti.actionBgColor"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.primaryInfo"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v13, v0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.title"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "No primary info"

    goto :goto_1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.secondaryInfo"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v7, ""

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    move-object v15, v0

    goto :goto_6

    :cond_5
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.text"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v15, v7

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v15

    const-string v15, "android.ongoingActivityNoti.expandedRemoteView"

    move-object/from16 v18, v13

    const-class v13, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v15, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/RemoteViews;

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.chipExpandedText"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.chronometerRemoteView"

    move-object/from16 v21, v15

    const-class v15, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.chronometerRemoteViewPosition"

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.chronometerRemoteViewTag"

    invoke-virtual {v0, v13, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progress"

    const/4 v15, -0x1

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progressMax"

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progressIndeterminate"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v43

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.firstIcon"

    const-class v15, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v47, v0

    check-cast v47, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.secondIcon"

    const-class v15, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.nowbarRemoteView"

    const-class v15, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Landroid/widget/RemoteViews;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progressSegments"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v13, 0x0

    new-array v0, v13, [Landroid/os/Parcelable;

    :cond_7
    move-object/from16 v50, v0

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progressSegments.icon"

    const-class v15, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.progressSegments.progressColor"

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.ongoingActivityNoti.description"

    invoke-virtual {v0, v13, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.secondaryInfoIcon"

    const-class v13, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.nowbarIcon"

    const-class v13, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Landroid/graphics/drawable/Icon;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.nowbarPrimaryInfo"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.nowbarSecondaryInfo"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Notification;->loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v13, v0, Landroid/app/Notification;->when:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.style"

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v44

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.ongoingActivityNoti.nowbarChronometerPosition"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v45

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    move-object/from16 v15, p3

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v22

    move/from16 v18, v23

    move-object/from16 v19, v24

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v22, v43

    move-object/from16 v23, v47

    move-object/from16 v24, v48

    move-object/from16 v29, v49

    move-object/from16 v30, v50

    move-object/from16 v43, p1

    invoke-direct/range {v0 .. v46}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZ)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_8

    const v1, 0x7f060530

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    :cond_8
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 48

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->clickIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->appIcon:Landroid/graphics/drawable/Icon;

    iget v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->bgColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget-object v31, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    new-array v4, v1, [Landroid/os/Parcelable;

    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v39

    const-string v1, ""

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->songTitle:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object/from16 v40, v1

    goto :goto_0

    :cond_0
    move-object/from16 v40, v5

    :goto_0
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v7, v5, Landroid/app/Notification;->when:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v42

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->clickIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v43, v5

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v43, v1

    :goto_2
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v13, "Media"

    const-string v14, ""

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;->songTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, ""

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x1

    move-object/from16 v1, p0

    move-object v0, v4

    move-object v4, v11

    move-object/from16 v12, v16

    move-object/from16 v16, v31

    move-object/from16 v31, v0

    move-object/from16 v44, p2

    invoke-direct/range {v1 .. v47}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/widget/RemoteViews;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Ljava/lang/String;",
            "IIZ",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "[",
            "Landroid/os/Parcelable;",
            "Landroid/graphics/drawable/Icon;",
            "I",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "IIZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    move v1, p5

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    move v1, p6

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    move v1, p7

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    move/from16 v1, p18

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    move/from16 v1, p20

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    move/from16 v1, p21

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mFirstIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    move/from16 v1, p32

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    move/from16 v1, p38

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move/from16 v1, p44

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    move/from16 v1, p45

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    move/from16 v1, p46

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 49

    move/from16 v0, p47

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v9, v4

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    goto :goto_4

    :cond_4
    move-object/from16 v17, p15

    :goto_4
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move/from16 v20, v2

    goto :goto_5

    :cond_5
    move/from16 v20, p18

    :goto_5
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move/from16 v24, v2

    goto :goto_6

    :cond_6
    move/from16 v24, p22

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    move/from16 v34, p32

    move-object/from16 v35, p33

    move-object/from16 v36, p34

    move-object/from16 v37, p35

    move-object/from16 v38, p36

    move-object/from16 v39, p37

    move/from16 v40, p38

    move-object/from16 v41, p39

    move-object/from16 v42, p40

    move-object/from16 v43, p41

    move-object/from16 v44, p42

    move-object/from16 v45, p43

    move/from16 v46, p44

    move/from16 v47, p45

    move/from16 v48, p46

    invoke-direct/range {v2 .. v48}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;IIILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Ljava/lang/Boolean;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILjava/lang/String;IIZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;[Landroid/os/Parcelable;Landroid/graphics/drawable/Icon;ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;IIZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mFirstIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mFirstIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    if-eq v1, v3, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eq p0, p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mFirstIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_11

    move v2, v3

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_12

    move v2, v3

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_14

    move v2, v3

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v3

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    if-nez v2, :cond_17

    move v2, v3

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mFirstIcon:Landroid/graphics/drawable/Icon;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomNowBarView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v23, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v24, v14

    const-string v14, "OngoingActivityData(mNotiID="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", mPendingIntent="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChipIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandedChipView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChipBackground="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryActionIndex="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActionType="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActions="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mActionBgColors="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardIconBg="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryInfo="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryInfo="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomExpandedCardView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedMarquee="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandedChipText="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerPosition="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChronometerTag="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressMax="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressIndeterminate="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOngoingCollapsedView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOngoingExpandView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOngoingCoverView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOngoingNowbarView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomNowBarView="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressSegments="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressSegmentIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgressColor="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryInfoIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNowbarIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNowbarPrimaryInfo="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNowbarSecondaryInfo="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppName="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhen="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppIcon="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationEntry="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStyle="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNowbarChronometerPosition="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMediaOngoingData="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    const-string v1, ")"

    invoke-static {v15, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
