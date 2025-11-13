.class public final Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
.super Ljava/lang/Object;
.source "DvrSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/dvr/DvrSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataFormat:I

.field private blacklist mHighThreshold:J

.field private blacklist mLowThreshold:J

.field private blacklist mPacketSize:J

.field private blacklist mStatusMask:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/dvr/DvrSettings;
    .locals 11

    new-instance v10, Landroid/media/tv/tuner/dvr/DvrSettings;

    iget v1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mStatusMask:I

    iget-wide v2, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mLowThreshold:J

    iget-wide v4, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mHighThreshold:J

    iget-wide v6, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mPacketSize:J

    iget v8, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mDataFormat:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/dvr/DvrSettings;-><init>(IJJJILandroid/media/tv/tuner/dvr/DvrSettings-IA;)V

    return-object v10
.end method

.method public whitelist setDataFormat(I)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mDataFormat:I

    return-object p0
.end method

.method public whitelist setHighThreshold(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mHighThreshold:J

    return-object p0
.end method

.method public whitelist setLowThreshold(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mLowThreshold:J

    return-object p0
.end method

.method public whitelist setPacketSize(J)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mPacketSize:J

    return-object p0
.end method

.method public whitelist setStatusMask(I)Landroid/media/tv/tuner/dvr/DvrSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/dvr/DvrSettings$Builder;->mStatusMask:I

    return-object p0
.end method
