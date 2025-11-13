.class public Lcom/samsung/android/media/codec/IVideoTranscodingService$Default;
.super Ljava/lang/Object;
.source "IVideoTranscodingService.java"

# interfaces
.implements Lcom/samsung/android/media/codec/IVideoTranscodingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/IVideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I
    .param p2, "callback"    # Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist stopTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
