.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Telecom-VideoCallImpl"


# instance fields
.field private final greylist-max-o mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private greylist-max-o mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private final greylist-max-o mCallingPackageName:Ljava/lang/String;

.field private greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private greylist-max-o mVideoQuality:I

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .locals 0

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoProvider(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 0

    iget-object p0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoQuality(Landroid/telecom/VideoCallImpl;I)V
    .locals 0

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .locals 3
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    .line 56
    iput v0, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 61
    new-instance v1, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v1, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 236
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 237
    invoke-interface {p1}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 239
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder-IA;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 240
    invoke-interface {p1, v0}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    .line 241
    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    .line 242
    invoke-virtual {p0, p3}, Landroid/telecom/VideoCallImpl;->setTargetSdkVersion(I)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New VideoCallImpl - videoProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method


# virtual methods
.method public greylist-max-p destroy()V
    .locals 3

    .line 256
    const-string v0, "Telecom-VideoCallImpl"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 260
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 264
    :goto_0
    return-void
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    .line 269
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 273
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 274
    if-nez p2, :cond_0

    .line 275
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 280
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback - callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public whitelist requestCallDataUsage()V
    .locals 2

    .line 390
    const-string v0, "Telecom-VideoCallImpl"

    const-string/jumbo v1, "requestCallDataUsage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 396
    :goto_0
    return-void
.end method

.method public whitelist requestCameraCapabilities()V
    .locals 1

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 385
    :goto_0
    return-void
.end method

.method public whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyRequest - request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    new-instance v0, Landroid/telecom/VideoProfile;

    iget v1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 363
    .local v0, "originalProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "originalProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    :goto_0
    return-void
.end method

.method public whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyResponse - response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    :goto_0
    return-void
.end method

.method public whitelist setCamera(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 306
    :try_start_0
    const-string/jumbo v0, "setCamera: cameraId=%s, calling=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    :goto_0
    return-void
.end method

.method public whitelist setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    :goto_0
    return-void
.end method

.method public whitelist setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    :goto_0
    return-void
.end method

.method public whitelist setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 401
    const-string v0, "Telecom-VideoCallImpl"

    const-string/jumbo v1, "setPauseImage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 407
    :goto_0
    return-void
.end method

.method public whitelist setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    :goto_0
    return-void
.end method

.method public greylist-max-o setTargetSdkVersion(I)V
    .locals 0
    .param p1, "sdkVersion"    # I

    .line 250
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mTargetSdkVersion:I

    .line 251
    return-void
.end method

.method public greylist-max-o setVideoState(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 415
    iget v0, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    if-eq v0, p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoState - videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoState:I

    .line 420
    return-void
.end method

.method public whitelist setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 342
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .line 286
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    const-string v1, "Telecom-VideoCallImpl"

    if-eq p1, v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCallback is ignored. callback is different. mCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCallback - callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 298
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :goto_0
    return-void
.end method
