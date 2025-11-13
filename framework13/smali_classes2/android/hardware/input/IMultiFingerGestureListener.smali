.class public interface abstract Landroid/hardware/input/IMultiFingerGestureListener;
.super Ljava/lang/Object;
.source "IMultiFingerGestureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IMultiFingerGestureListener$Stub;,
        Landroid/hardware/input/IMultiFingerGestureListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IMultiFingerGestureListener"


# virtual methods
.method public abstract blacklist onMultiFingerGesture(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
