.class public interface abstract Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener;
.super Ljava/lang/Object;
.source "IAuthTouchEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener$Stub;,
        Lcom/samsung/android/knox/zt/usertrust/IAuthTouchEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.usertrust.IAuthTouchEventListener"


# virtual methods
.method public abstract blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
