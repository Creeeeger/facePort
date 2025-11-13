.class public Landroid/app/admin/DevicePolicyKeyguardService;
.super Landroid/app/Service;
.source "DevicePolicyKeyguardService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DevicePolicyKeyguardService"


# instance fields
.field private blacklist mCallback:Landroid/app/admin/IKeyguardCallback;

.field private final blacklist mClient:Landroid/app/admin/IKeyguardClient;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/app/admin/IKeyguardCallback;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/app/admin/DevicePolicyKeyguardService;Landroid/app/admin/IKeyguardCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/admin/DevicePolicyKeyguardService$1;

    invoke-direct {v0, p0}, Landroid/app/admin/DevicePolicyKeyguardService$1;-><init>(Landroid/app/admin/DevicePolicyKeyguardService;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mClient:Landroid/app/admin/IKeyguardClient;

    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .locals 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    const-string v1, "DevicePolicyKeyguardService"

    if-nez v0, :cond_0

    const-string v0, "KeyguardCallback was unexpectedly null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    invoke-interface {v0}, Landroid/app/admin/IKeyguardCallback;->onDismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "onDismiss failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mClient:Landroid/app/admin/IKeyguardClient;

    invoke-interface {v0}, Landroid/app/admin/IKeyguardClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateKeyguardSurface(Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
