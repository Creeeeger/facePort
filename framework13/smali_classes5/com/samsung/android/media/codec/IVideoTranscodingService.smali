.class public interface abstract Lcom/samsung/android/media/codec/IVideoTranscodingService;
.super Ljava/lang/Object;
.source "IVideoTranscodingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;,
        Lcom/samsung/android/media/codec/IVideoTranscodingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.media.codec.IVideoTranscodingService"


# virtual methods
.method public abstract blacklist register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startTask(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopTask(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
