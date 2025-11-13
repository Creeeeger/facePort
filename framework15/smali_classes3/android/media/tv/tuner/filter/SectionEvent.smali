.class public Landroid/media/tv/tuner/filter/SectionEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "SectionEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mSectionNum:I

.field private final blacklist mTableId:I

.field private final blacklist mVersion:I


# direct methods
.method private constructor blacklist <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    iput p2, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    iput p3, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    iput-wide p4, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    return-void
.end method


# virtual methods
.method public whitelist getDataLength()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionEvent;->getDataLengthLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getDataLengthLong()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getSectionNumber()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    return v0
.end method

.method public whitelist getTableId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    return v0
.end method

.method public whitelist getVersion()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    return v0
.end method
