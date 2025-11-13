.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private blacklist dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist mergeSysMemUsage([JI[JI)V
    .locals 14

    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p3, 0x0

    aget-wide v2, p2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x10

    if-nez v6, :cond_1

    add-int/lit8 v4, p1, 0x0

    aput-wide v2, p0, v4

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v7, :cond_0

    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    add-int/lit8 v4, p1, 0x0

    add-long v5, v0, v2

    aput-wide v5, p0, v4

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v7, :cond_4

    add-int v5, p1, v4

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_2

    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    :cond_2
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v8, p0, v6

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p2, v6

    long-to-double v10, v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-long v10, v0, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, p0, v5

    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x2

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-gez v5, :cond_3

    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    :cond_3
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 20

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    array-length v1, v7

    if-ge v9, v1, :cond_6

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    array-length v2, v8

    if-ge v10, v2, :cond_5

    aget v11, v7, v9

    aget v12, v8, v10

    add-int v2, v11, v12

    mul-int/lit8 v13, v2, 0x10

    int-to-byte v2, v13

    const/4 v3, 0x0

    move-object/from16 v14, p0

    invoke-virtual {v14, v2, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-lez v2, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v2, v7

    const/4 v15, 0x1

    if-le v2, v15, :cond_1

    if-eq v0, v11, :cond_0

    move v2, v11

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    :goto_2
    invoke-static {v6, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v0, v11

    move/from16 v17, v0

    goto :goto_3

    :cond_1
    move/from16 v17, v0

    :goto_3
    array-length v0, v8

    if-le v0, v15, :cond_3

    nop

    if-eq v1, v12, :cond_2

    move v15, v12

    goto :goto_4

    :cond_2
    const/4 v15, -0x1

    :goto_4
    invoke-static {v6, v15, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v1, v12

    move v15, v1

    goto :goto_5

    :cond_3
    move v15, v1

    :goto_5
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " samples:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Cached"

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v18, v4

    move v4, v13

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Free"

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  ZRam"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Kernel"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Native"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v1, v15

    move/from16 v0, v17

    goto :goto_6

    :cond_4
    move-wide/from16 v18, v4

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v14, p0

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v14, p0

    return-void
.end method

.method public blacklist getTotalMemUsage()[J
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist mergeStats(I[JI)V
    .locals 3

    int-to-byte v0, p1

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
