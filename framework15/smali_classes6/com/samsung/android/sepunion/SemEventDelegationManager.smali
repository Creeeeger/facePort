.class public Lcom/samsung/android/sepunion/SemEventDelegationManager;
.super Ljava/lang/Object;
.source "SemEventDelegationManager.java"


# static fields
.field public static final blacklist BUNDLE_KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist BUNDLE_KEY_COMPONENT_LIST:Ljava/lang/String; = "component_list"

.field public static final blacklist BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final blacklist BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist BUNDLE_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final blacklist BUNDLE_KEY_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final blacklist CUSTOM_EVENT_ACTIVITY_STATE:Ljava/lang/String; = "monitor_activity_state"

.field public static final blacklist CUSTOM_EVENT_CALL_STATE:Ljava/lang/String; = "monitor_call_state"

.field public static final blacklist CUSTOM_EVENT_PACKAGE_STATE:Ljava/lang/String; = "monitor_package_state"

.field public static final blacklist EXTRA_KEY_ACTION_ORIGIN:Ljava/lang/String; = "action_origin"

.field public static final blacklist EXTRA_KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final blacklist EXTRA_KEY_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final blacklist EXTRA_KEY_IS_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final blacklist EXTRA_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final blacklist EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist EXTRA_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final blacklist EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final blacklist EXTRA_KEY_URI:Ljava/lang/String; = "uri"

.field public static final whitelist FLAG_CHECK_CONDITION_NONE:I = 0x0

.field public static final whitelist FLAG_CHECK_CONDITION_PACKAGE_NAME:I = 0x1

.field public static final whitelist FLAG_CHECK_CONDITION_PERMISSION:I = 0x2

.field public static final blacklist MASK_FLAG_CHECK_CONDITION:I = 0x3

.field public static final blacklist PACKAGE_STATE_ADDED:Ljava/lang/String; = "package_added"

.field public static final blacklist PACKAGE_STATE_MODIFIED:Ljava/lang/String; = "package_modified"

.field public static final blacklist PACKAGE_STATE_REMOVED:Ljava/lang/String; = "package_removed"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

.field private static final blacklist sStaticLock:Ljava/lang/Object;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEPUNION."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist clearPendingIntentAsUser(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->clearPendingIntentAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->getNumPendingIntentAsUser(ILjava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;
    .locals 4

    sget-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    const-string v2, "sepunion"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v2, "semeventdelegator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    sget-object v3, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist registerContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist registerCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist registerIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist unregisterContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist unregisterCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist unregisterIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private blacklist unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getNumPendingIntent(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getNumPendingIntentAsUser(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist registerContentUri(Landroid/net/Uri;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist registerCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist registerIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist registerIntentFilterForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public whitelist registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist unregisterAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->clearPendingIntentAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist unregisterContentUri(Landroid/net/Uri;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist unregisterCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist unregisterIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method
