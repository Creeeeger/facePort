.class public Landroid/media/tv/tuner/filter/MmtpRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MmtpRecordEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mFirstMbInSlice:I

.field private final blacklist mMpuSequenceNumber:I

.field private final blacklist mPts:J

.field private final blacklist mScHevcIndexMask:I

.field private final blacklist mTsIndexMask:I


# direct methods
.method private constructor blacklist <init>(IJIJII)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    iput-wide p2, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    iput p4, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    iput-wide p5, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    iput p7, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    iput p8, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    return-void
.end method


# virtual methods
.method public whitelist getDataLength()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getFirstMacroblockInSlice()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public whitelist getMpuSequenceNumber()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public whitelist getPts()J
    .locals 2

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScHevcIndexMask()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    return v0
.end method

.method public whitelist getTsIndexMask()I
    .locals 1

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    return v0
.end method
