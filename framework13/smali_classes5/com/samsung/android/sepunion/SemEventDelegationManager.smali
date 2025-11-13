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

    .line 20
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

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private blacklist clearPendingIntentAsUser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 319
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->clearPendingIntentAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 339
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->getNumPendingIntentAsUser(ILjava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 344
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;
    .locals 4

    .line 75
    sget-object v0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    if-eqz v1, :cond_0

    .line 77
    monitor-exit v0

    return-object v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sepunion"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 80
    .local v1, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string/jumbo v2, "semeventdelegator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 81
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sepunion/SemEventDelegationManager;->sService:Lcom/samsung/android/sepunion/IDeviceInfoManager;

    .line 82
    monitor-exit v0

    return-object v3

    .line 83
    .end local v1    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v2    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist registerContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 99
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist registerCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 233
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 234
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist registerIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 129
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 8
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "flag"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I
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

    .line 186
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 187
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 188
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

    .line 192
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 254
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 255
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 301
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 302
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 279
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 210
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getNumPendingIntent(I)I
    .locals 2
    .param p1, "type"    # I

    .line 333
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
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public whitelist registerCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 227
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

    .line 228
    return-void
.end method

.method public whitelist registerIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public blacklist registerIntentFilterForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->getService()Lcom/samsung/android/sepunion/IDeviceInfoManager;

    move-result-object v0

    .line 141
    .local v0, "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/sepunion/IDeviceInfoManager;->registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "service":Lcom/samsung/android/sepunion/IDeviceInfoManager;
    :cond_0
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;)V
    .locals 8
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "flag"    # I
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

    .line 179
    .local p4, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 179
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public whitelist unregisterAll()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->clearPendingIntentAsUser(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public whitelist unregisterContentUri(Landroid/net/Uri;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterContentUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method public whitelist unregisterCustomEvent(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 295
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

    .line 296
    return-void
.end method

.method public whitelist unregisterIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterIntentFilterAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 274
    return-void
.end method

.method public whitelist unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 204
    return-void
.end method
