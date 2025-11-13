.class final Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
.super Lcom/android/internal/telecom/IVideoProvider$Stub;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoProviderBinder"
.end annotation


# instance fields
.field blacklist mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-void
.end method


# virtual methods
.method public greylist-max-o addVideoCallback(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o removeVideoCallback(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o requestCallDataUsage()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
