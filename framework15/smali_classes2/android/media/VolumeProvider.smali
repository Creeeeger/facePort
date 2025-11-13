.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;,
        Landroid/media/VolumeProvider$ControlType;
    }
.end annotation


# static fields
.field public static final whitelist VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final whitelist VOLUME_CONTROL_FIXED:I = 0x0

.field public static final whitelist VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private greylist-max-o mCallback:Landroid/media/VolumeProvider$Callback;

.field private final blacklist mControlId:Ljava/lang/String;

.field private final greylist-max-o mControlType:I

.field private greylist-max-o mCurrentVolume:I

.field private final greylist-max-o mMaxVolume:I


# direct methods
.method public constructor whitelist <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/VolumeProvider;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    iput-object p4, p0, Landroid/media/VolumeProvider;->mControlId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist getCurrentVolume()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return v0
.end method

.method public final whitelist getMaxVolume()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    return v0
.end method

.method public final whitelist getVolumeControl()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    return v0
.end method

.method public final whitelist getVolumeControlId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist onAdjustVolume(I)V
    .locals 0

    return-void
.end method

.method public whitelist onSetVolumeTo(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setCallback(Landroid/media/VolumeProvider$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    return-void
.end method

.method public final whitelist setCurrentVolume(I)V
    .locals 1

    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    :cond_0
    return-void
.end method
