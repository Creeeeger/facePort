.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final blacklist TAG:Ljava/lang/String; = "DrmEventService"

.field static blacklist isLogEnabled:Z

.field public static blacklist mDrmManagerClient:Landroid/drm/DrmManagerClient;


# instance fields
.field private blacklist mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private blacklist mServiceLooper:Landroid/os/Looper;

.field blacklist rchelp:Lcom/android/server/DrmMediaResourceHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 89
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 3

    .line 94
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    const-string v1, "DrmEventService"

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService : onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    sget-object v0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 97
    :cond_1
    sget-object v0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->saveDevID()V

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    .line 104
    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    .line 106
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 86
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 2

    .line 79
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 81
    return-void
.end method

.method public whitelist onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 67
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 68
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    const-string v1, "DrmEventService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart intent.getAction() :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "DrmEventService : onStart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v0}, Lcom/android/server/DrmEventService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "START_RESOURCE_HELPER"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DrmEventService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    return-void
.end method
