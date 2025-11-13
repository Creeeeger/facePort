.class public interface abstract Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService;
.super Ljava/lang/Object;
.source "IAuthFactorTouchService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Stub;,
        Lcom/samsung/cmfa/AuthTouch/IAuthFactorTouchService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.cmfa.AuthTouch.IAuthFactorTouchService"


# virtual methods
.method public abstract blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setTouchEvent(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterAuthTouchEnableListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterAuthTouchEventListener(Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
