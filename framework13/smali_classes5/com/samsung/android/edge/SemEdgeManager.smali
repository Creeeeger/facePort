.class public Lcom/samsung/android/edge/SemEdgeManager;
.super Ljava/lang/Object;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    }
.end annotation


# static fields
.field public static final blacklist DISABLE_EDGE_LIGHTING:I = 0x1

.field public static final blacklist DISABLE_NONE_EDGE_LIGHTING:I = 0x0

.field private static final blacklist EDGE_LIGHTING:Ljava/lang/String; = "edge_lighting"

.field private static final blacklist EDGE_LIGHTING_ALWAYS:I = 0x0

.field private static final blacklist EDGE_LIGHTING_EDGE_NOTIFICATIONS:Ljava/lang/String; = "edge_lighting_edge_notifications"

.field public static final whitelist EDGE_LIGHTING_ENABLED:Z

.field private static final blacklist EDGE_LIGHTING_SCREEN_OFF:I = 0x2

.field private static final blacklist EDGE_LIGHTING_SCREEN_ON:I = 0x1

.field private static final blacklist EDGE_LIGHTING_SHOW_CONDITION:Ljava/lang/String; = "edge_lighting_show_condition"

.field public static final blacklist EDGE_LIGHTING_STATE_NONE:I = 0x0

.field public static final blacklist EDGE_LIGHTING_STATE_RUNNING:I = 0x1

.field public static final blacklist SUPPORT_EDGE_LIGHTING:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEdgeLightingDelegatesLock:Ljava/lang/Object;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mService:Landroid/app/INotificationManager;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "edgelighting_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/samsung/android/edge/SemEdgeManager;->EDGE_LIGHTING_ENABLED:Z

    .line 107
    .end local v0    # "feature":Ljava/lang/String;
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/INotificationManager;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    .line 127
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    .line 130
    return-void
.end method

.method private blacklist getService()Landroid/app/INotificationManager;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    .line 137
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private blacklist isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 472
    const-string v0, "edge_lighting"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isEdgeLightingEnabledByScreen(Landroid/content/ContentResolver;Z)Z
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "isInteractive"    # Z

    .line 476
    const-string v0, "edge_lighting_show_condition"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 477
    .local v0, "condition":I
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    xor-int/2addr v3, p2

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public blacklist bindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;I)V
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .param p2, "condition"    # I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 166
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string v1, "bindEdgeLightingService : callback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 173
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    move-object v1, v3

    .line 175
    goto :goto_1

    .line 177
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 178
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 179
    new-instance v2, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V

    move-object v1, v2

    .line 180
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .local v2, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 185
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, p2, v2}, Landroid/app/INotificationManager;->bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    goto :goto_2

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string v5, "bindEdgeLightingService : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string v1, " cancelNotification : service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->cancelNotificationByEdge(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "groupKey"    # Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string v1, " cancelNotificationByNotification : service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 386
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist disable(I)V
    .locals 3
    .param p1, "what"    # I

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1, v2}, Landroid/app/INotificationManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    nop

    .line 433
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist disableEdgeLightingNotification(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    nop

    .line 450
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getEdgeLightingState()I
    .locals 3

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getEdgeLightingState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isEdgeLightingNotificationAllowed()Z
    .locals 6

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 399
    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/samsung/android/edge/SemEdgeManager;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    return v1

    .line 405
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 406
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 407
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 409
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 410
    .local v4, "isInteractive":Z
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/edge/SemEdgeManager;->isEdgeLightingEnabledByScreen(Landroid/content/ContentResolver;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 411
    return v1

    .line 415
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v4    # "isInteractive":Z
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/app/INotificationManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "EdgeService dead?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist isPackageEnabled(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist registerEdgeLightingListener(Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/edge/OnEdgeLightingListener;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    if-nez p1, :cond_1

    .line 234
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEdgeLightingListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 241
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    move-object v1, v3

    .line 243
    goto :goto_1

    .line 245
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 246
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 247
    new-instance v2, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V

    move-object v1, v2

    .line 248
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .local v2, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    .line 253
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    invoke-interface {v3, v1, v2}, Landroid/app/INotificationManager;->registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    goto :goto_2

    .line 254
    :catch_0
    move-exception v3

    .line 255
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerEdgeLightingListener : RemoteException : "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist startEdgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    if-eqz p1, :cond_1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/INotificationManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "info is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stopEdgeLighting()V
    .locals 3

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    nop

    .line 346
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist unbindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/edge/OnEdgeLightingCallback;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    if-nez p1, :cond_1

    .line 201
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindEdgeLightingService : callback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 208
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    move-object v1, v3

    .line 210
    goto :goto_1

    .line 212
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 213
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 214
    sget-object v2, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unbindEdgeLightingService : cannot find the callback"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 218
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/app/INotificationManager;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    goto :goto_2

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist unregisterEdgeLightingListener(Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/edge/OnEdgeLightingListener;

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 269
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterEdgeLightingListener : listener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 275
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 276
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    move-object v1, v3

    .line 278
    goto :goto_1

    .line 280
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_2
    goto :goto_0

    .line 281
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 282
    sget-object v2, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterEdgeLightingListener : cannot find the listener"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 286
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/app/INotificationManager;->unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    goto :goto_2

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v1    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist updateEdgeLightingPackageList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    if-nez p1, :cond_1

    .line 302
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEdgeLightingPackageList : list is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 306
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist updateEdgeLightingPolicy(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    if-nez p1, :cond_1

    .line 148
    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEdgeLightingPolicy : RemoteException : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
