.class public Lcom/samsung/android/cover/SemCoverService;
.super Landroid/app/Service;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SemCoverService$MyHandler;,
        Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;
    }
.end annotation


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "SemCoverService"


# instance fields
.field private greylist mAttach:Z

.field private greylist mHandler:Landroid/os/Handler;

.field private final greylist mLock:Ljava/lang/Object;

.field private greylist mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmAttach(Lcom/samsung/android/cover/SemCoverService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputmAttach(Lcom/samsung/android/cover/SemCoverService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/samsung/android/cover/SemCoverService$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$MyHandler;-><init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public greylist getCoverHost()Ljava/lang/Object;
    .locals 1

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    return-object v0
.end method

.method public greylist onCoverAppCovered(Z)I
    .locals 1
    .param p1, "covered"    # Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public greylist onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 86
    return-void
.end method

.method public greylist onCoverDetached()V
    .locals 0

    .line 93
    return-void
.end method

.method public greylist onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 100
    return-void
.end method

.method public greylist onSystemReady()V
    .locals 0

    .line 79
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->onCoverDetached()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
