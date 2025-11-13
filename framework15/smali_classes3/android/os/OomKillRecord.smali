.class public final Landroid/os/OomKillRecord;
.super Ljava/lang/Object;
.source "OomKillRecord.java"


# instance fields
.field private blacklist mAnonRssInKb:J

.field private blacklist mFileRssInKb:J

.field private blacklist mOomScoreAdj:S

.field private blacklist mPgTablesInKb:J

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mShmemRssInKb:J

.field private blacklist mTimeStampInMillis:J

.field private blacklist mTotalVmInKb:J

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(JIILjava/lang/String;SJJJJJ)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    move/from16 v3, p3

    iput v3, v0, Landroid/os/OomKillRecord;->mPid:I

    move/from16 v4, p4

    iput v4, v0, Landroid/os/OomKillRecord;->mUid:I

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    move/from16 v6, p6

    iput-short v6, v0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    return-void
.end method


# virtual methods
.method public blacklist getOomScoreAdj()S
    .locals 1

    iget-short v0, p0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    return v0
.end method

.method public blacklist getPid()I
    .locals 1

    iget v0, p0, Landroid/os/OomKillRecord;->mPid:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimestampMilli()J
    .locals 2

    iget-wide v0, p0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/os/OomKillRecord;->mUid:I

    return v0
.end method

.method public blacklist logKillOccurred()V
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/OomKillRecord;->mUid:I

    iget v3, v0, Landroid/os/OomKillRecord;->mPid:I

    iget-short v4, v0, Landroid/os/OomKillRecord;->mOomScoreAdj:S

    iget-wide v5, v0, Landroid/os/OomKillRecord;->mTimeStampInMillis:J

    iget-object v7, v0, Landroid/os/OomKillRecord;->mProcessName:Ljava/lang/String;

    iget-wide v8, v0, Landroid/os/OomKillRecord;->mTotalVmInKb:J

    iget-wide v10, v0, Landroid/os/OomKillRecord;->mAnonRssInKb:J

    iget-wide v12, v0, Landroid/os/OomKillRecord;->mFileRssInKb:J

    iget-wide v14, v0, Landroid/os/OomKillRecord;->mShmemRssInKb:J

    move/from16 v18, v2

    iget-wide v1, v0, Landroid/os/OomKillRecord;->mPgTablesInKb:J

    move-wide/from16 v16, v1

    const/16 v1, 0x2f2

    move/from16 v2, v18

    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJLjava/lang/String;JJJJJ)V

    return-void
.end method
