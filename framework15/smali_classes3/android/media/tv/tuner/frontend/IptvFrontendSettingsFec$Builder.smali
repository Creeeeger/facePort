.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;
.super Ljava/lang/Object;
.source "IptvFrontendSettingsFec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFecColNum:I

.field private blacklist mFecRowNum:I

.field private blacklist mFecType:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
    .locals 5

    new-instance v0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;

    iget v1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecType:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecRowNum:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecColNum:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;-><init>(IIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec-IA;)V

    return-object v0
.end method

.method public whitelist setFecColNum(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecColNum:I

    return-object p0
.end method

.method public whitelist setFecRowNum(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecRowNum:I

    return-object p0
.end method

.method public whitelist setFecType(I)Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;->mFecType:I

    return-object p0
.end method
