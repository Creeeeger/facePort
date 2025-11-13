.class public interface abstract Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
.super Ljava/lang/Object;
.source "IDualDarAuthProgressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;,
        Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.dar.ddar.IDualDarAuthProgressCallback"


# virtual methods
.method public abstract blacklist onInnerLayerUnlockFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInnerLayerUnlocked()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
