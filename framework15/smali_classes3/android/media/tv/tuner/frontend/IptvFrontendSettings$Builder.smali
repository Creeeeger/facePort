.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "IptvFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitrate:J

.field private blacklist mContentUrl:Ljava/lang/String;

.field private blacklist mDstIpAddress:[B

.field private blacklist mDstPort:I

.field private blacklist mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

.field private blacklist mIgmp:I

.field private blacklist mProtocol:I

.field private blacklist mSrcIpAddress:[B

.field private blacklist mSrcPort:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    const-string v0, ""

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
    .locals 13

    new-instance v12, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    iget-object v2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    iget v3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    iget-object v5, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    iget v6, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    iget-wide v8, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    iget-object v10, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;-><init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;Landroid/media/tv/tuner/frontend/IptvFrontendSettings-IA;)V

    return-object v12
.end method

.method public whitelist setBitrate(J)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mBitrate:J

    return-object p0
.end method

.method public whitelist setContentUrl(Ljava/lang/String;)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mContentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDstIpAddress([B)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstIpAddress:[B

    return-object p0
.end method

.method public whitelist setDstPort(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mDstPort:I

    return-object p0
.end method

.method public whitelist setFec(Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    return-object p0
.end method

.method public whitelist setIgmp(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mIgmp:I

    return-object p0
.end method

.method public whitelist setProtocol(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mProtocol:I

    return-object p0
.end method

.method public whitelist setSrcIpAddress([B)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcIpAddress:[B

    return-object p0
.end method

.method public whitelist setSrcPort(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;->mSrcPort:I

    return-object p0
.end method
