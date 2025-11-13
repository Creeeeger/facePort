.class Landroid/media/PlayerBase$IPlayerWrapper;
.super Landroid/media/IPlayer$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPlayerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/PlayerBase;)V
    .locals 1
    .param p1, "pb"    # Landroid/media/PlayerBase;

    .line 376
    invoke-direct {p0}, Landroid/media/IPlayer$Stub;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    .line 378
    return-void
.end method


# virtual methods
.method public blacklist applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V
    .locals 3
    .param p1, "configuration"    # Landroid/media/VolumeShaperConfiguration;
    .param p2, "operation"    # Landroid/media/VolumeShaperOperation;

    .line 432
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 433
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 434
    invoke-static {p1}, Landroid/media/VolumeShaper$Configuration;->fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    .line 435
    invoke-static {p2}, Landroid/media/VolumeShaper$Operation;->fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;

    move-result-object v2

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    .line 437
    :cond_0
    return-void
.end method

.method public greylist-max-o pause()V
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 391
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerPause()V

    .line 394
    :cond_0
    return-void
.end method

.method public greylist-max-o setPan(F)V
    .locals 1
    .param p1, "pan"    # F

    .line 414
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 415
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetPan(F)V

    .line 418
    :cond_0
    return-void
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .locals 1
    .param p1, "delayMs"    # I

    .line 422
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 423
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public greylist-max-o setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .line 406
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 407
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->setVolumeMultiplier(F)V

    .line 410
    :cond_0
    return-void
.end method

.method public greylist-max-o start()V
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 383
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStart()V

    .line 386
    :cond_0
    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    .line 399
    .local v0, "pb":Landroid/media/PlayerBase;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/media/PlayerBase;->playerStop()V

    .line 402
    :cond_0
    return-void
.end method
