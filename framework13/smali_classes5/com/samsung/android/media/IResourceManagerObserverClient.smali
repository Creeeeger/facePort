.class public interface abstract Lcom/samsung/android/media/IResourceManagerObserverClient;
.super Ljava/lang/Object;
.source "IResourceManagerObserverClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/IResourceManagerObserverClient$Stub;,
        Lcom/samsung/android/media/IResourceManagerObserverClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.media.IResourceManagerObserverClient"


# virtual methods
.method public abstract blacklist notify(IIILcom/samsung/android/media/MediaResourceNotifyInfoParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
