.class public abstract Lcom/samsung/android/sume/core/service/LocalService;
.super Lcom/samsung/android/sume/core/service/ServiceStub;
.source "LocalService.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;
    }
.end annotation


# instance fields
.field protected blacklist binder:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/sume/core/service/ServiceStub;-><init>()V

    .line 10
    new-instance v0, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;-><init>(Lcom/samsung/android/sume/core/service/LocalService;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalService;->binder:Landroid/os/Binder;

    .line 12
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation
.end method
