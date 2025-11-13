.class public Lcom/android/internal/util/NotificationMessagingUtil;
.super Ljava/lang/Object;
.source "NotificationMessagingUtil.java"


# static fields
.field private static final blacklist DEFAULT_SMS_APP_SETTING:Ljava/lang/String; = "sms_default_application"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultSmsApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcacheDefaultSmsApp(Lcom/android/internal/util/NotificationMessagingUtil;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/NotificationMessagingUtil$1;-><init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist cacheDefaultSmsApp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v1, "msg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public blacklist isMessaging(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
