.class public Landroid/media/tv/tuner/filter/TsRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "TsRecordEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mFirstMbInSlice:I

.field private final blacklist mPid:I

.field private final blacklist mPts:J

.field private final blacklist mScIndexMask:I

.field private final blacklist mTsIndexMask:I


# direct methods
.method private constructor blacklist <init>(IIIJJI)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    iput p2, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    iput p3, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    iput-wide p4, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    iput-wide p6, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    iput p8, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    return-void
.end method


# virtual methods
.method public whitelist getDataLength()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getFirstMacroblockInSlice()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public whitelist getPacketId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    return v0
.end method

.method public whitelist getPts()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScIndexMask()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    return v0
.end method

.method public whitelist getTsIndexMask()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    return v0
.end method
