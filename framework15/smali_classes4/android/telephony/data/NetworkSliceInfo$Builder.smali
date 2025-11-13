.class public final Landroid/telephony/data/NetworkSliceInfo$Builder;
.super Ljava/lang/Object;
.source "NetworkSliceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/NetworkSliceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMappedHplmnSliceDifferentiator:I

.field private blacklist mMappedHplmnSliceServiceType:I

.field private blacklist mSliceDifferentiator:I

.field private blacklist mSliceServiceType:I

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    iput v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/NetworkSliceInfo;
    .locals 8

    new-instance v7, Landroid/telephony/data/NetworkSliceInfo;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    iget v4, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    iget v5, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/data/NetworkSliceInfo;-><init>(IIIIILandroid/telephony/data/NetworkSliceInfo-IA;)V

    return-object v7
.end method

.method public whitelist setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const v0, 0xfffffe

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice diffentiator value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    return-object p0
.end method

.method public whitelist setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const v0, 0xfffffe

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice diffentiator value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice status is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
