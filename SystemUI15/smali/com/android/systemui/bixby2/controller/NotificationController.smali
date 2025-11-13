.class public Lcom/android/systemui/bixby2/controller/NotificationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final NOTI_APPNAME:Ljava/lang/String; = "appName"

.field static final NOTI_FGS:Ljava/lang/String; = "fgs"

.field static final NOTI_ID:Ljava/lang/String; = "notiID"

.field static final NOTI_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final NOTI_LIST:Ljava/lang/String; = "notificationList"

.field static final NOTI_ONGOING:Ljava/lang/String; = "ongoing"

.field static final NOTI_REPLY:Ljava/lang/String; = "canReply"

.field static final NOTI_RESULT:Ljava/lang/String; = "result"

.field static final NOTI_TEXT:Ljava/lang/String; = "notiText"

.field static final NOTI_TITLE:Ljava/lang/String; = "notiTitle"

.field static final NOTI_WHEN:Ljava/lang/String; = "when"

.field public static final PARAMETER_INCLUDE_ONGOING:Ljava/lang/String; = "includeOngoing"

.field public static final RESULT_ALL_IS_NON_DISMISSABLE:I = 0x7

.field public static final RESULT_ALL_IS_ONGOING_NOTI:I = 0x4

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_NONBLOCKABLE_PACKAGE:I = 0x8

.field public static final RESULT_NOTIFICATION_ALREADY_TURNED_OFF:I = 0x9

.field public static final RESULT_NO_MATCHED_APP_NAME:I = 0x3

.field public static final RESULT_NO_NOTIFICATION_EXIST:I = 0x2

.field public static final RESULT_READOUT_ALL_WITH_ID:I = 0x5

.field public static final RESULT_READOUT_APP_WITH_ID:I = 0x6

.field public static final RESULT_SUCCESS:I = 0x1

.field static final TAG:Ljava/lang/String; = "NotificationController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private mDisplayDescription:Ljava/lang/StringBuffer;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mItemCount:I

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field mRemoteInput:Landroid/app/RemoteInput;

.field mRemoteInputId:Ljava/lang/String;

.field mRemoteInputIntent:Landroid/app/PendingIntent;

.field mRemoteInputs:[Landroid/app/RemoteInput;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$8YgcTVJ1TjT3ZAS7QzmaK-6JDXc(Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAllNotifications$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BQOEWOw0ZvMB04j2SpnYDkjgFKU(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAppNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EdmZwQiR0B87AqEKJPGinEZp5cc(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$getVisibleNotifications$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w-5o_1x3mOxl8LDFIYlVQmstMjk(Lcom/android/systemui/bixby2/controller/NotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->lambda$deleteAllNotificationsDismissable$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mItemCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz p1, :cond_0

    const-string p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    :cond_0
    return-void
.end method

.method private checkDismissableNotification(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkNotificatoins(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkOngoingNotification(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkOngoingNotification() size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  activeNotifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private deleteAllNotifications(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkOngoingNotification(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private deleteAllNotificationsDismissable(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkDismissableNotification(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0
.end method

.method private deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v0, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v5, v4

    goto :goto_1

    :cond_0
    move v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/bixby2/controller/NotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    const/4 v6, 0x4

    :cond_5
    :goto_3
    return v6
.end method

.method private getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 1

    const-string p0, "getFocusedPackageName() "

    const-string v0, "NotificationController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getVisibleNotifications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private isFolderClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 10

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    array-length v1, v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    iget-object v4, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_4

    iput-object v5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    iput-object v8, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    iput-object v9, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputId:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method private lambda$deleteAllNotifications$1()V
    .locals 2

    const-string v0, "NotificationController"

    const-string v1, "clear Notifiations call by bixby"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    return-void
.end method

.method private synthetic lambda$deleteAllNotificationsDismissable$2()V
    .locals 2

    const-string v0, "NotificationController"

    const-string v1, "clear Notifiations call by bixby"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(IZ)V

    return-void
.end method

.method private lambda$deleteAppNotifications$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, p0, v5, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v5, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method

.method private static lambda$getVisibleNotifications$0(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private readAllNotification(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;

    invoke-direct {v2}, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/bixby2/controller/NotificationController;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    if-ge v3, v0, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v4}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{\"appName\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\", \"notiCount\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\"}"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    iget-object v4, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object p1, v2, Lcom/android/systemui/bixby2/controller/NotificationController$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    return-void
.end method

.method private readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "all"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "result"

    const/4 v8, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_1
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v3, :cond_f

    move-object/from16 v12, p2

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v15, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object/from16 v18, v2

    move/from16 v17, v3

    move/from16 v19, v5

    move-object/from16 v20, v7

    goto/16 :goto_d

    :cond_3
    :goto_3
    iget-object v9, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v9}, Lcom/android/systemui/bixby2/controller/NotificationController;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    move/from16 v17, v3

    iget-boolean v3, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    const-string v18, "NULL"

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v19, v5

    iget-object v5, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-direct {v0, v5, v3}, Lcom/android/systemui/bixby2/controller/NotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v3, v18

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object/from16 v5, v18

    goto :goto_9

    :cond_6
    move/from16 v19, v5

    const-class v3, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v8}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.messages"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_7

    move-object/from16 v5, v18

    goto :goto_5

    :cond_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_6
    move-object/from16 v3, v18

    goto :goto_9

    :cond_9
    iget-object v3, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_a

    move-object/from16 v3, v18

    goto :goto_7

    :cond_a
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    iget-object v5, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v20, v3

    const-string v3, "android.text"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_8
    move-object/from16 v3, v18

    move-object/from16 v5, v20

    :goto_9
    invoke-direct {v0, v5}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/systemui/bixby2/controller/NotificationController;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v13

    const-string v18, "FALSE"

    const-string v20, "TRUE"

    if-eqz v13, :cond_c

    move-object/from16 v13, v20

    goto :goto_a

    :cond_c
    move-object/from16 v13, v18

    :goto_a
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v21, v8, 0x40

    if-eqz v21, :cond_d

    move-object/from16 v12, v20

    goto :goto_b

    :cond_d
    move-object/from16 v12, v18

    :goto_b
    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_e

    move-object/from16 v8, v20

    goto :goto_c

    :cond_e
    move-object/from16 v8, v18

    :goto_c
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/android/systemui/bixby2/controller/NotificationController;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "{\"notiID\":\""

    move-object/from16 v18, v2

    const-string v2, "\", \"notiTitle\":\""

    move-object/from16 v20, v7

    const-string v7, "\", \"notiText\":\""

    invoke-static {v0, v9, v2, v5, v7}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", \"canReply\":\""

    const-string v5, "\", \"when\":\""

    invoke-static {v0, v3, v2, v13, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\", \"fgs\":\""

    const-string v3, "\", \"ongoing\":\""

    invoke-static {v0, v14, v2, v12, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"appName\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"},"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    move-object/from16 v7, v20

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v2

    move/from16 v19, v5

    move-object/from16 v20, v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    sub-int/2addr v0, v2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v9, v11

    move/from16 v5, v19

    goto :goto_f

    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v5, 0x2

    goto :goto_e

    :cond_11
    const/4 v0, 0x3

    move v5, v0

    :goto_e
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    :goto_f
    const-string v0, "result: "

    const-string v1, " notiList:"

    invoke-static {v5, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " itemCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "notificationList"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itemCount"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/bixby2/controller/NotificationController;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private stringValidater(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "\""

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n\r"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public checkNotificationSoundStatus(Ljava/lang/String;)I
    .locals 3

    const-string v0, "NotificationController"

    const-string v1, "checkNotificationSoundStatus : pkg = "

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationSoundStatus(Ljava/lang/String;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret = 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "fail to checkNotificationSoundStatus e = "

    invoke-static {p1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public checkNotificationStatusForPackage(Ljava/lang/String;)I
    .locals 4

    const-string v0, "NotificationController"

    const-string v1, "checkNotificationStatusForPackage : 0x"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, v3}, Landroid/app/INotificationManager;->isNotificationTurnedOff(Ljava/lang/String;I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    return v2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NameNotFoundException"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public deleteNotification(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificatoins(I)Z

    move-result v1

    const-string v2, "NotificationController"

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    const-string p1, "deleteAllNotification "

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAllNotifications(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string v1, "includeOngoing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "deleteAllNotification with ongoing"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteNotificationAllDismissable()I

    move-result p0

    goto :goto_0

    :cond_1
    const-string v1, "deleteNotification "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    const-string p1, " deleteNotification : "

    invoke-static {p0, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public deleteNotificationAllDismissable()I
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->checkNotificatoins(I)Z

    move-result v1

    const-string v2, "NotificationController"

    if-eqz v1, :cond_0

    const-string v1, "deleteAllNotificationAllDismissable "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->deleteAllNotificationsDismissable(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const-string v0, " deleteNotificationAllDismissable : "

    invoke-static {p0, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAppNotificationSettingStatus(Ljava/lang/String;)I
    .locals 2

    const-string v0, "getAppNotificationSettingStatus : 0x"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getAppNotificationSettingStatus(Ljava/lang/String;)I

    move-result p0

    const-string p1, "NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayDescription()Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDisplayDescription:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public getFocusedPackageName()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "topActivity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    const-string v2, "NotificationController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "focusedPackageName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mItemCount:I

    return p0
.end method

.method public getNotificationSettingStatus(Z)I
    .locals 2

    const-string v0, "getNotificationSettingStatus : 0x"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getNotificationSettingStatus(Z)I

    move-result p0

    const-string p1, "NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public goToNotiSettings(Landroid/content/Context;)Z
    .locals 8

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_POPUP_STYLE_SETTINGS"

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->isFolderClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v0, "showCoverToast"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ignoreKeyguardState"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0xc000000

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1, v7}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v6
.end method

.method public openNotificationPanel()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationSubRoomRequest()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "NotificationController"

    const-string v0, "error while expandNotificationsPanel"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public readNotificationWithID(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/NotificationController;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    const-string v1, "NotificationController"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "readAllNotificationWithID   activeNotifications = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "all"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAllNotification(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v2, "readAppNotificationWithID "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/NotificationController;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "readNotification = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public replyNotification(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const-string v0, "send remote input result by others : "

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    const-string v2, "NotificationController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "Unable to send remote input result, entry is null : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/NotificationController;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "Unable to send remote input result, not remote input : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v6, v5, v4}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-object p2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    :try_start_0
    sget-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const-string v11, "NOUI_2023"

    const/4 v7, 0x1

    move-object v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->addReplyHistory(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v3, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    return v3

    :goto_1
    const-string p1, "Unable to send remote input result"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public setNotificationEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mEntries:Ljava/util/List;

    return-void
.end method

.method public setNotificationTurnOffForPackage(Ljava/lang/String;)I
    .locals 4

    const-string v0, "Package ("

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "NotificationController"

    if-nez v2, :cond_1

    const-string p0, "Non-blockable package : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    return p0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController;->mNotifManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, v2}, Landroid/app/INotificationManager;->setNotificationTurnOff(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") notification is already turned off"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x9

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    return v1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NameNotFoundException"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
