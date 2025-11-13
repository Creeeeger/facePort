.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public final blacklist arePoolStats:Z

.field public final blacklist cacheHits:I

.field public final blacklist cacheMisses:I

.field public final blacklist cacheSize:I

.field public greylist dbName:Ljava/lang/String;

.field public greylist dbSize:J

.field public greylist lookaside:I

.field public greylist pageSize:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;JJIIIIZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const-wide/16 v0, 0x400

    div-long v2, p4, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    mul-long v2, p2, p4

    div-long/2addr v2, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    iput p7, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    iput p8, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    iput p9, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    iput-boolean p10, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    return-void
.end method
