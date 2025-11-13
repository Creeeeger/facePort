.class public interface abstract Lcom/samsung/android/aod/IAODDozeCallback;
.super Ljava/lang/Object;
.source "IAODDozeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODDozeCallback$Stub;,
        Lcom/samsung/android/aod/IAODDozeCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAODDozeCallback"


# virtual methods
.method public abstract blacklist onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDozeAcquired()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDozeReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
