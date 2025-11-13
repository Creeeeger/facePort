.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/vr/VrListenerService$1;

    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final whitelist isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object v0
.end method

.method public whitelist onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public greylist-max-r onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method
