.class public interface abstract Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener;
.super Ljava/lang/Object;
.source "IAuthTouchEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener$Stub;,
        Lcom/samsung/cmfa/AuthTouch/IAuthTouchEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.cmfa.AuthTouch.IAuthTouchEventListener"


# virtual methods
.method public abstract blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
