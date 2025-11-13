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
    .param p1, "handler"    # Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1712
    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    .line 1713
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1714
    return-void
.end method


# virtual methods
.method public greylist-max-o addVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoCallback - videoCallbackBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1725
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1726
    return-void
.end method

.method public greylist-max-o removeVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeVideoCallback - videoCallbackBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1733
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1734
    return-void
.end method

.method public greylist-max-o requestCallDataUsage()V
    .locals 2

    .line 1796
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1797
    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .locals 2

    .line 1792
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1793
    return-void
.end method

.method public blacklist reset()V
    .locals 1

    .line 1717
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1718
    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyRequest - from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1778
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1779
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1780
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1781
    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyResponse - reponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-Connection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1788
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1789
    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 1739
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1740
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1744
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1749
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1752
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1753
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1754
    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 1765
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1767
    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1761
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1762
    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1800
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1801
    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1757
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1758
    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 1770
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1771
    return-void
.end method
