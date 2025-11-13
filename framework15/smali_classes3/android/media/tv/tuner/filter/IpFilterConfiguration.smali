.class public final Landroid/media/tv/tuner/filter/IpFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;
.source "IpFilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist INVALID_IP_FILTER_CONTEXT_ID:I = -0x1


# instance fields
.field private final blacklist mDstIpAddress:[B

.field private final blacklist mDstPort:I

.field private final blacklist mIpFilterContextId:I

.field private final blacklist mPassthrough:Z

.field private final blacklist mSrcIpAddress:[B

.field private final blacklist mSrcPort:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZI)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    iput-object p2, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcIpAddress:[B

    iput-object p3, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstIpAddress:[B

    iput p4, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcPort:I

    iput p5, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstPort:I

    iput-boolean p6, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mPassthrough:Z

    iput p7, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mIpFilterContextId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZILandroid/media/tv/tuner/filter/IpFilterConfiguration-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/filter/IpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;[B[BIIZI)V

    return-void
.end method

.method public static whitelist builder()Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;
    .locals 2

    new-instance v0, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/IpFilterConfiguration$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getDstIpAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstIpAddress:[B

    return-object v0
.end method

.method public whitelist getDstPort()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mDstPort:I

    return v0
.end method

.method public whitelist getIpFilterContextId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mIpFilterContextId:I

    return v0
.end method

.method public whitelist getSrcIpAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcIpAddress:[B

    return-object v0
.end method

.method public whitelist getSrcPort()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mSrcPort:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public whitelist isPassthrough()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/IpFilterConfiguration;->mPassthrough:Z

    return v0
.end method
