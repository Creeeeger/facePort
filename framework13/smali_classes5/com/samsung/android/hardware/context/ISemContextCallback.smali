.class public interface abstract Lcom/samsung/android/hardware/context/ISemContextCallback;
.super Ljava/lang/Object;
.source "ISemContextCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;,
        Lcom/samsung/android/hardware/context/ISemContextCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.context.ISemContextCallback"


# virtual methods
.method public abstract blacklist getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
