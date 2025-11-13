.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    }
.end annotation


# instance fields
.field greylist-max-o mRcc:Landroid/media/RemoteControlClient;

.field greylist-max-o mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 2356
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2357
    const/high16 v0, 0x800000

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 2358
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2359
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2360
    return-void
.end method

.method private greylist-max-o configureSessionVolume()V
    .locals 5

    .line 2562
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const-string v1, "MediaRouter"

    if-nez v0, :cond_1

    .line 2563
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Rcc to configure volume for route "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_0
    return-void

    .line 2568
    :cond_1
    invoke-virtual {v0}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v0

    .line 2569
    .local v0, "session":Landroid/media/session/MediaSession;
    if-nez v0, :cond_3

    .line 2570
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2571
    const-string v2, "Rcc has no session to configure volume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_2
    return-void

    .line 2575
    :cond_3
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2576
    const/4 v1, 0x0

    .line 2577
    .local v1, "volumeControl":I
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2579
    :pswitch_0
    const/4 v1, 0x2

    .line 2580
    nop

    .line 2586
    :goto_0
    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getVolumeControl()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2587
    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getMaxVolume()I

    move-result v2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v2, v3, :cond_5

    .line 2588
    :cond_4
    new-instance v2, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-direct {v2, p0, v1, v3, v4}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;-><init>(Landroid/media/MediaRouter$UserRouteInfo;III)V

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2589
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 2591
    .end local v1    # "volumeControl":I
    :cond_5
    goto :goto_1

    .line 2593
    :cond_6
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2594
    .local v1, "bob":Landroid/media/AudioAttributes$Builder;
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 2595
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 2596
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2598
    .end local v1    # "bob":Landroid/media/AudioAttributes$Builder;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o updatePlaybackInfoOnRcc()V
    .locals 0

    .line 2558
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2559
    return-void
.end method


# virtual methods
.method public whitelist getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .line 2435
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public whitelist requestSetVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 2513
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2514
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2515
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2520
    :cond_1
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 2524
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2525
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2526
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    return-void

    .line 2529
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2531
    :cond_1
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 2397
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2398
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2399
    return-void
.end method

.method public whitelist setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2445
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2446
    return-void
.end method

.method public whitelist setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2455
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2456
    return-void
.end method

.method public whitelist setName(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2382
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2384
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2385
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 2367
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2368
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2369
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2370
    return-void
.end method

.method public whitelist setPlaybackStream(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 2551
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 2552
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 2553
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2555
    :cond_0
    return-void
.end method

.method public whitelist setPlaybackType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2473
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 2474
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2475
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2477
    :cond_0
    return-void
.end method

.method public whitelist setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    .line 2424
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2425
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 2426
    return-void
.end method

.method public whitelist setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 2407
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2408
    return-void
.end method

.method public whitelist setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 2498
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2499
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_1

    .line 2500
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 2501
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v0, :cond_0

    .line 2502
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->setCurrentVolume(I)V

    .line 2504
    :cond_0
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2505
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_1

    .line 2506
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2509
    :cond_1
    return-void
.end method

.method public whitelist setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    .line 2463
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 2464
    return-void
.end method

.method public whitelist setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    .line 2486
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 2487
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2488
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2490
    :cond_0
    return-void
.end method

.method public whitelist setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    .line 2540
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 2541
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 2542
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2544
    :cond_0
    return-void
.end method
