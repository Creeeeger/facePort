.class public Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener$Default;
.super Ljava/lang/Object;
.source "IAuthTouchEnableListener.java"

# interfaces
.implements Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyTouchEventEnabled(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "debugMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
