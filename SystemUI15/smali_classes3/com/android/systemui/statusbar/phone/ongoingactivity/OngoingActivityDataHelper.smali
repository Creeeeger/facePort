.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

.field public static final TAG:Ljava/lang/String;

.field public static baseActivityComponentName:Landroid/content/ComponentName;

.field public static cardIsShown:Z

.field public static final geminiStateObservers:Ljava/util/List;

.field public static final hiddenOngoingActivityDataList:Ljava/util/LinkedList;

.field public static isUpdateNotAllowed:Z

.field public static final mOnHideRawValueChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

.field public static final mOngoingActivityLists:Ljava/util/LinkedList;

.field public static final mediaOngoingActivityObserver:Ljava/util/List;

.field public static mediaOngoingData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

.field public static final nowbarObservers:Ljava/util/List;

.field public static final nowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

.field public static final observers:Ljava/util/List;

.field public static final pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final pipEnabledComponentNameList:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiStateObservers:Ljava/util/List;

    const-string/jumbo v0, "{OngoingActivityDataHelper}"

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pipEnabledComponentNameList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingActivityObserver:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarWatcher:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$nowbarWatcher$1;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOnHideRawValueChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;
    .locals 5

    new-instance v0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNotiID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setPendingIntent(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setChipIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setExpandedChipView(Landroid/widget/RemoteViews;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setChipBackground(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryActionIndex:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setPrimaryActionNum(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setActions(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionBgColors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setActionBgColors(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setPrimaryInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setSecondaryInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setCardIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setCardIconBg(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setCustomExpandedCardView(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setExpandedChipText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setChronometerView(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setChronometerTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingExpandView(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingNowbarView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingNowbarView(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowbarIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowbarPrimaryInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowbarSecondaryInfo(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setUserId(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_3

    const-string v4, "nowbar_key_app_icon"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-eqz v3, :cond_4

    const-string v4, "nowbar_key_chronometerRemoteViewPosition"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsLockscreenSecret:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    const-string v4, "nowbar_key_need_to_blockcard"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showSmallIcon"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "nowbar_key_only_small_icon"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRawValueHide:Z

    const-string v4, "nowbar_key_need_to_hide_content"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    const-string v3, "nowbar_key_is_group_summary"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarChronometerPosition:I

    if-eqz p0, :cond_8

    const-string v2, "nowbar_key_chronometerPosition"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setExtraData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static dataDump(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        appName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        style : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    const-string v2, "        userId : "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v1

    const-string v2, "        promoted : "

    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "        custom : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "        chipBackground : "

    invoke-static {p1, v4, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v4, "        hasChipText : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    const-string v4, "        hasChronometer : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    const-string v4, "        hasSegmentProgress : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    const-string v4, "        hasNowBarIcon : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarPrimaryInfo:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    const-string v4, "        hasNowBarPrimary : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNowbarSecondaryInfo:Ljava/lang/String;

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    const-string v4, "        hasNowBarSecondary : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    const-string v4, "        hasRightIcon : "

    invoke-static {v4, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    const-string v1, "        hasDescription : "

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "        action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNeedMarquee:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "        needMarquee : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showSmallIcon"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "        useSmallIcon : "

    invoke-static {v1, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "        isSensitive : "

    invoke-static {v1, p0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        isSummary : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static geminiPlayStateChanged(Z)V
    .locals 9

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiStateObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

    iget-object v1, v1, Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    iget-boolean v3, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    iget-boolean v4, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    iget-boolean v5, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    const-string v6, "onPlayStateChanged play = "

    const-string v7, ", isVisibleView = "

    const-string v8, ", isShowAnimating = "

    invoke-static {v6, v7, v8, p0, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", isHideAnimating = "

    const-string v7, ", isPlaying = "

    invoke-static {v2, v3, v6, v4, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v3, "AiAgentEffect"

    invoke-static {v2, v5, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_2

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-nez v2, :cond_0

    iget-boolean v3, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {v2, v1}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_1

    :cond_2
    if-nez p0, :cond_5

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz v2, :cond_3

    iget-boolean v3, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    if-eqz v3, :cond_4

    :cond_3
    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {v2, v1}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    :cond_5
    :goto_1
    iput-boolean p0, v1, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    return-object p0
.end method

.method public static getMediaData()Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPendingOngoingActivityData(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    return-object p0
.end method

.method public static isExceptionalOngoingActivity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "null"

    :cond_1
    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-ne v0, v1, :cond_2

    const-string v0, "convmode_notification_channel_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static notifyRankingStateChanged(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsLockscreenSecret:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "notify ongoing ranking changed "

    const-string v4, " : promoted="

    const-string v5, ", isLockscreenSecret="

    invoke-static {v3, p0, v4, v5, v2}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->convertOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateItemNowbarObservers(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    :cond_0
    return-void
.end method

.method public static notifyUpdateItemNowbarObservers(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyUpdateItemNowbarObservers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v1, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->updateItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyUpdateObservers()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;->update$6()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static recreateOngoingActivity(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createExpandView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createCollapsedView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->createCoverScreenView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    :cond_0
    return-void
.end method

.method public static reinflateOngoingActivity()V
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->recreateOngoingActivity(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeOngoingActivityByKey(Ljava/lang/String;)V
    .locals 6

    const-string v0, "findOngoingActivityDataIndex() noti id = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeOngoingActivity() size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "removeOngoingActivity() key = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyRemoveItemNowbarObservers "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    new-instance v3, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {v3}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNotiID(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->removeItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnHideRawValueChangedListeners:Lcom/android/systemui/util/ListenerSet;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOnHideRawValueChangedListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper$mOnHideRawValueChangedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_5
    if-ltz v2, :cond_6

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;->remove(I)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static setBaseActivityComponentName(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBaseActivityComponentName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateOngoingList(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    :cond_0
    return-void
.end method

.method public static shouldHide(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z
    .locals 12

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    const/4 v2, 0x0

    const-string v3, ", pipEnabledComponentNameList:"

    const-string v4, ", intent.creatorPackage:"

    const-string v5, ", basePackageName:"

    const-string v6, ", intent.component:"

    sget-object v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v9

    :goto_0
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    if-nez v1, :cond_2

    goto/16 :goto_8

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    iget-object v10, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    if-eqz v1, :cond_5

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    if-nez v1, :cond_d

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_d

    iget p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mStyle:I

    if-gt p0, v8, :cond_d

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-nez p0, :cond_d

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v9

    :goto_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pipEnabledComponentNameList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    if-eqz v10, :cond_9

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_6

    :cond_9
    :goto_5
    move v10, v2

    :goto_6
    if-eqz v10, :cond_7

    goto :goto_8

    :cond_a
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_7

    :cond_b
    move-object p1, v9

    :goto_7
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_c
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pipEnabledComponentNameList:Ljava/util/LinkedList;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "shouldHide() return false. baseActivityComponentName:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9, v4, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    :goto_8
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_9

    :cond_e
    move-object p1, v9

    :goto_9
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :cond_f
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pipEnabledComponentNameList:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "shouldHide() return true. baseActivityComponentName:"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9, v4, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public static updateMediaProgressStateIfNeeded()V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingActivityObserver:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/SecMediaControlPanel$2;

    iget-object v1, v1, Lcom/android/systemui/media/SecMediaControlPanel$2;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v1, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    iget-object v1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static updateOngoingActivityViews(Landroid/content/Context;ZZ)V
    .locals 13

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    const/4 v7, 0x1

    if-eqz p1, :cond_5

    iget-object v8, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    iget v9, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    if-ne v9, v7, :cond_2

    const v9, 0x7f0a084f

    invoke-virtual {v8, v9}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    iget-object v10, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Notification$Action;

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v5, v11, v12}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->makeTextButtonRemoteView(Landroid/app/Notification$Action;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->isBottomBtnActionStyle(Landroid/content/Context;)Z

    move-result v9

    iget-object v10, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v10, v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateIconButtonRemoteView(Ljava/util/ArrayList;Landroid/widget/RemoteViews;Z)V

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateNotiExpandButtonView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;Z)V

    :cond_3
    iget-object v9, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateExpandViewFontSize(Landroid/widget/RemoteViews;ZLandroid/content/Context;)V

    iget-object v9, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateCollapsedViewFontSize(Landroid/widget/RemoteViews;)V

    iput-object v8, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    :cond_5
    :goto_2
    if-eqz p2, :cond_a

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/widget/RemoteViews;

    iget-object v8, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    aput-object v8, v5, v2

    iget-object v8, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    aput-object v8, v5, v7

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews;

    const v8, 0x7f060533

    if-eqz v7, :cond_6

    const v9, 0x10201fa

    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_6
    if-eqz v7, :cond_7

    const v9, 0x102064e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->setExpandButtonColor(Landroid/widget/RemoteViews;)V

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingExpandView:Landroid/widget/RemoteViews;

    const v6, 0x7f06051a

    if-eqz v5, :cond_9

    const v7, 0x7f0a085e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_9
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCollapsedView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_a

    const v7, 0x7f0a084b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_a
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public static updateOngoingList(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->shouldHide(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->cardIsShown:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->shouldHide(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    const-string v0, "cardIsShown:true. skip hiddenOngoingActivityDataList recovery"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateObservers()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateTopIndex()V

    :cond_9
    return-void
.end method

.method public static updateTopIndex()V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->nowbarObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v5, :cond_1

    const-string v2, "MEDIA_NOWBAR"

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "updateTopIndex "

    const-string v5, "FaceWidgetNotificationControllerWrapper"

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / notificationController = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {v3}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNotiID(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onTopNowBarItemChanged(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    const-string/jumbo v1, "updateTopIndex id is null or empty"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string/jumbo v2, "updateTopIndex exception "

    invoke-static {v2, v1, v5}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updateTOPIndex - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateMediaProgressStateIfNeeded()V

    return-void
.end method
