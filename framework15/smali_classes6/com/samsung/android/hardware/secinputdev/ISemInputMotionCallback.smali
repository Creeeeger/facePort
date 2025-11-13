.class public interface abstract Lcom/samsung/android/hardware/secinputdev/ISemInputMotionCallback;
.super Ljava/lang/Object;
.source "ISemInputMotionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputMotionCallback$Stub;,
        Lcom/samsung/android/hardware/secinputdev/ISemInputMotionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.secinputdev.ISemInputMotionCallback"


# virtual methods
.method public abstract blacklist onEventChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
