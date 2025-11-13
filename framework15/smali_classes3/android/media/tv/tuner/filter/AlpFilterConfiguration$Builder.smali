.class public final Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "AlpFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLengthType:I

.field private blacklist mPacketType:I

.field private blacklist mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
    .locals 5

    new-instance v0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    iget v3, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IILandroid/media/tv/tuner/filter/AlpFilterConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist setLengthType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    return-object p0
.end method

.method public whitelist setPacketType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .locals 0

    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    return-object p0
.end method

.method public whitelist setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method
