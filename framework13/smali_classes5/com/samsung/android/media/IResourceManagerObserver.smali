.class public interface abstract Lcom/samsung/android/media/IResourceManagerObserver;
.super Ljava/lang/Object;
.source "IResourceManagerObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/IResourceManagerObserver$Stub;,
        Lcom/samsung/android/media/IResourceManagerObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.media.IResourceManagerObserver"


# virtual methods
.method public abstract blacklist disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableObserver(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCodecCapacity(I)Lcom/samsung/android/media/GetCodecCapacityReturn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getResourceInfo(I)Lcom/samsung/android/media/GetResourceInfoReturn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setResourcePriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
