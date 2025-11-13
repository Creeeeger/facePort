.class Landroid/media/MediaDescrambler$AidlDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Landroid/media/MediaDescrambler$DescramblerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AidlDescrambler"
.end annotation


# instance fields
.field blacklist mAidlDescrambler:Landroid/hardware/cas/IDescrambler;

.field final synthetic blacklist this$0:Landroid/media/MediaDescrambler;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaDescrambler;Landroid/hardware/cas/IDescrambler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaDescrambler$AidlDescrambler;->this$0:Landroid/media/MediaDescrambler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/media/MediaDescrambler$AidlDescrambler;->mAidlDescrambler:Landroid/hardware/cas/IDescrambler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Descrambler could not be created"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IHwBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaDescrambler$AidlDescrambler;->mAidlDescrambler:Landroid/hardware/cas/IDescrambler;

    invoke-interface {v0}, Landroid/hardware/cas/IDescrambler;->release()V

    return-void
.end method

.method public blacklist requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMediaCasSession([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
