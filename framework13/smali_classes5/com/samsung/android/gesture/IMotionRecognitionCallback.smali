.class public interface abstract Lcom/samsung/android/gesture/IMotionRecognitionCallback;
.super Ljava/lang/Object;
.source "IMotionRecognitionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;,
        Lcom/samsung/android/gesture/IMotionRecognitionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.gesture.IMotionRecognitionCallback"


# virtual methods
.method public abstract blacklist getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getListenerPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
