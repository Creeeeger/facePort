.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IptvFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Igmp;,
        Landroid/media/tv/tuner/frontend/IptvFrontendSettings$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist IGMP_UNDEFINED:I = 0x0

.field public static final whitelist IGMP_V1:I = 0x1

.field public static final whitelist IGMP_V2:I = 0x2

.field public static final whitelist IGMP_V3:I = 0x4

.field public static final whitelist PROTOCOL_RTP:I = 0x2

.field public static final whitelist PROTOCOL_UDP:I = 0x1

.field public static final whitelist PROTOCOL_UNDEFINED:I


# instance fields
.field private final blacklist mBitrate:J

.field private final blacklist mContentUrl:Ljava/lang/String;

.field private final blacklist mDstIpAddress:[B

.field private final blacklist mDstPort:I

.field private final blacklist mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

.field private final blacklist mIgmp:I

.field private final blacklist mProtocol:I

.field private final blacklist mSrcIpAddress:[B

.field private final blacklist mSrcPort:I


# direct methods
.method private constructor blacklist <init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcIpAddress:[B

    iput-object p2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstIpAddress:[B

    iput p3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcPort:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstPort:I

    iput-object p5, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    iput p6, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mProtocol:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mIgmp:I

    iput-wide p8, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mBitrate:J

    iput-object p10, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mContentUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;Landroid/media/tv/tuner/frontend/IptvFrontendSettings-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;-><init>([B[BIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getBitrate()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mBitrate:J

    return-wide v0
.end method

.method public whitelist getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDstIpAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstIpAddress:[B

    return-object v0
.end method

.method public whitelist getDstPort()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mDstPort:I

    return v0
.end method

.method public whitelist getFec()Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mFec:Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    return-object v0
.end method

.method public whitelist getIgmp()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mIgmp:I

    return v0
.end method

.method public whitelist getProtocol()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mProtocol:I

    return v0
.end method

.method public whitelist getSrcIpAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcIpAddress:[B

    return-object v0
.end method

.method public whitelist getSrcPort()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettings;->mSrcPort:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
