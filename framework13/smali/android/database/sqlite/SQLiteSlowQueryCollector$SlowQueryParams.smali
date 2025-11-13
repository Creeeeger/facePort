.class public final Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;
.super Ljava/lang/Object;
.source "SQLiteSlowQueryCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteSlowQueryCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlowQueryParams"
.end annotation


# instance fields
.field public blacklist mCpn:Ljava/lang/String;

.field public blacklist mCurrentRows:J

.field public blacklist mDbn:Ljava/lang/String;

.field public blacklist mDbs:J

.field public blacklist mHashedDbn:Ljava/lang/String;

.field public blacklist mHiddenSql:Ljava/lang/String;

.field public blacklist mLat:J

.field public blacklist mMpn:Ljava/lang/String;

.field public blacklist mPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mPgc:J

.field public blacklist mSql:Ljava/lang/String;

.field public blacklist mStartTime:J

.field public blacklist mTotalRows:J

.field public blacklist mVer:J

.field public blacklist mWas:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;JJLjava/lang/String;JJ)V
    .locals 0
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "executionTime"    # J
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "currentRows"    # J
    .param p9, "totalRows"    # J

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mDbn:Ljava/lang/String;

    .line 485
    iput-wide p4, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mLat:J

    .line 486
    iput-object p6, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mSql:Ljava/lang/String;

    .line 487
    iput-wide p7, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mCurrentRows:J

    .line 488
    iput-wide p9, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mTotalRows:J

    .line 489
    iput-wide p2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector$SlowQueryParams;->mStartTime:J

    .line 490
    return-void
.end method
