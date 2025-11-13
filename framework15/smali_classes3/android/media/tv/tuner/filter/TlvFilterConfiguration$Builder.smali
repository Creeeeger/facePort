.class public final Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "TlvFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsCompressedIpPacket:Z

.field private blacklist mPacketType:I

.field private blacklist mPassthrough:Z

.field private blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
    .locals 7

    new-instance v6, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IZZLandroid/media/tv/tuner/filter/TlvFilterConfiguration-IA;)V

    return-object v6
.end method

.method public whitelist setCompressedIpPacket(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    return-object p0
.end method

.method public whitelist setPacketType(I)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    return-object p0
.end method

.method public whitelist setPassthrough(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    return-object p0
.end method

.method public whitelist setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method
