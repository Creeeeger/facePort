.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "S.S.N."

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v4, :cond_2

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v6, :cond_4

    iget v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v2

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " onKeyguardShowingChanged() isMethodSecure : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isShowing: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isUnlocked : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", getAction() : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    if-ne v5, v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v5, :cond_5

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v5, :cond_5

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    const-string v5, " isClickedKnoxItem :"

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_9

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_5

    :cond_9
    move-object v4, v2

    :goto_5
    if-eqz v4, :cond_1d

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_6

    :cond_a
    move-object v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v5, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_7

    :cond_b
    move-object v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_11

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_8

    :cond_d
    move-object v0, v2

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_11

    :cond_e
    :goto_9
    if-nez v0, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_10

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    goto :goto_a

    :cond_10
    move-object v4, v2

    :goto_a
    if-eqz v4, :cond_1d

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_b

    :cond_11
    move-object v0, v2

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v5, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_11

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-eqz v0, :cond_1d

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v4, :cond_13

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    goto :goto_c

    :cond_13
    move-object v5, v2

    :goto_c
    invoke-virtual {v0, v5, v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    goto/16 :goto_11

    :cond_14
    :goto_d
    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    const-string v0, "ACTION_KEYGUARD_BIO_LIST_HIDE_CONTENT"

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_11

    :cond_16
    :goto_e
    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    goto :goto_f

    :cond_18
    move-object v0, v2

    :goto_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v4, :cond_19

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mDetailAdapterItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    goto :goto_10

    :cond_19
    move-object v4, v2

    :goto_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    goto :goto_11

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v4, :cond_1c

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unlock click notification : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-eqz v4, :cond_1c

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_1c
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    :cond_1d
    :goto_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz p0, :cond_1f

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    goto :goto_12

    :cond_1e
    const-string p0, "onKeyguardShowingChanged - mIsClickedPopupKeyguardUnlockShowing : "

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1f
    :goto_12
    return-void
.end method
