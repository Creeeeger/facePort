.class public Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Default;
.super Ljava/lang/Object;
.source "IAuthFactorTouchService.java"

# interfaces
.implements Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public blacklist registerAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist setTouchEvent(ZZ)V
    .locals 0
    .param p1, "ret"    # Z
    .param p2, "debugMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist unregisterAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public blacklist unregisterAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
