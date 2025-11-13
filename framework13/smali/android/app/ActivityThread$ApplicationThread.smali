.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final greylist-max-o DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field static final blacklist START_SABINDER_TRACKING:I = 0x4

.field static final blacklist STOP_SABINDER_TRACKING_AND_DUMP:I = 0x5


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private blacklist dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "isSystem"    # Z

    .line 1862
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1863
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1864
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1865
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2, p3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 1866
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1867
    return-void
.end method

.method private greylist-max-o dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 69
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v17, 0x400

    div-long v19, v1, v17

    .line 1727
    .local v19, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v21, v1, v17

    .line 1728
    .local v21, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v23, v1, v17

    .line 1730
    .local v23, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    .line 1731
    .local v25, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->gc()V

    .line 1732
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v26, v1, v17

    .line 1733
    .local v26, "dalvikMax":J
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v28, v1, v17

    .line 1734
    .local v28, "dalvikFree":J
    sub-long v30, v26, v28

    .line 1736
    .local v30, "dalvikAllocated":J
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v32, 0x0

    aput-object v2, v1, v32

    const-class v2, Landroid/app/Activity;

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    move-object v14, v1

    .line 1742
    .local v14, "classesToCount":[Ljava/lang/Class;
    invoke-static {v14, v13}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v33

    .line 1743
    .local v33, "instanceCounts":[J
    aget-wide v11, v33, v32

    .line 1744
    .local v11, "appContextInstanceCount":J
    aget-wide v9, v33, v13

    .line 1745
    .local v9, "activityInstanceCount":J
    aget-wide v7, v33, v3

    .line 1746
    .local v7, "webviewInstanceCount":J
    aget-wide v5, v33, v4

    .line 1748
    .local v5, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v3

    .line 1749
    .local v3, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v1

    .line 1750
    .local v1, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v13

    .line 1751
    .local v13, "globalAssetCount":I
    move/from16 v34, v13

    .end local v13    # "globalAssetCount":I
    .local v34, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1752
    .local v13, "globalAssetManagerCount":I
    move/from16 v35, v13

    .end local v13    # "globalAssetManagerCount":I
    .local v35, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v13

    .line 1753
    .local v13, "binderLocalObjectCount":I
    move/from16 v36, v13

    .end local v13    # "binderLocalObjectCount":I
    .local v36, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1754
    .local v13, "binderProxyObjectCount":I
    move/from16 v37, v13

    .end local v13    # "binderProxyObjectCount":I
    .local v37, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1755
    .local v13, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v38

    .line 1756
    .local v38, "parcelSize":J
    move/from16 v41, v13

    move-object/from16 v40, v14

    .end local v13    # "binderDeathObjectCount":I
    .end local v14    # "classesToCount":[Ljava/lang/Class;
    .local v40, "classesToCount":[Ljava/lang/Class;
    .local v41, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1757
    .local v13, "parcelCount":J
    move-wide/from16 v42, v13

    .end local v13    # "parcelCount":J
    .local v42, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1759
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v44, v1

    .end local v1    # "viewRootInstanceCount":J
    .local v44, "viewRootInstanceCount":J
    const-wide v1, 0x10b00000001L

    invoke-virtual {v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1760
    .local v1, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-wide/from16 v46, v11

    .end local v11    # "appContextInstanceCount":J
    .local v46, "appContextInstanceCount":J
    const-wide v11, 0x10500000001L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1761
    nop

    .line 1762
    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v14, "unknown"

    .line 1761
    :goto_0
    const-wide v11, 0x10900000002L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1763
    move-wide/from16 v48, v1

    move-wide/from16 v11, v44

    .end local v1    # "mToken":J
    .end local v44    # "viewRootInstanceCount":J
    .local v11, "viewRootInstanceCount":J
    .local v48, "mToken":J
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v50, v3

    .end local v3    # "viewInstanceCount":J
    .local v50, "viewInstanceCount":J
    move/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v52, v5

    .end local v5    # "openSslSocketCount":J
    .local v52, "openSslSocketCount":J
    move-wide/from16 v5, v19

    move-wide/from16 v54, v7

    .end local v7    # "webviewInstanceCount":J
    .local v54, "webviewInstanceCount":J
    move-wide/from16 v7, v21

    move-wide/from16 v56, v9

    .end local v9    # "activityInstanceCount":J
    .local v56, "activityInstanceCount":J
    move-wide/from16 v9, v23

    move-wide/from16 v60, v11

    move-wide/from16 v58, v46

    .end local v11    # "viewRootInstanceCount":J
    .end local v46    # "appContextInstanceCount":J
    .local v58, "appContextInstanceCount":J
    .local v60, "viewRootInstanceCount":J
    move-wide/from16 v11, v26

    move-object/from16 v68, v13

    move/from16 v0, v34

    move/from16 v62, v35

    move/from16 v63, v36

    move/from16 v64, v37

    move-object/from16 v34, v40

    move/from16 v65, v41

    move-wide/from16 v66, v42

    const/16 v35, 0x1

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v35    # "globalAssetManagerCount":I
    .end local v36    # "binderLocalObjectCount":I
    .end local v37    # "binderProxyObjectCount":I
    .end local v40    # "classesToCount":[Ljava/lang/Class;
    .end local v41    # "binderDeathObjectCount":I
    .end local v42    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v34, "classesToCount":[Ljava/lang/Class;
    .local v62, "globalAssetManagerCount":I
    .local v63, "binderLocalObjectCount":I
    .local v64, "binderProxyObjectCount":I
    .local v65, "binderDeathObjectCount":I
    .local v66, "parcelCount":J
    .local v68, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v13, v30

    move/from16 v36, v0

    move-object v0, v15

    .end local v0    # "globalAssetCount":I
    .local v36, "globalAssetCount":I
    move-wide/from16 v15, v28

    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1766
    move-wide/from16 v1, v48

    .end local v48    # "mToken":J
    .restart local v1    # "mToken":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1768
    const-wide v3, 0x10b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1769
    .local v3, "oToken":J
    move-wide/from16 v5, v50

    const-wide v7, 0x10500000001L

    .end local v50    # "viewInstanceCount":J
    .local v5, "viewInstanceCount":J
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1771
    const-wide v9, 0x10500000002L

    move-wide/from16 v11, v60

    .end local v60    # "viewRootInstanceCount":J
    .restart local v11    # "viewRootInstanceCount":J
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1773
    const-wide v13, 0x10500000003L

    move-wide/from16 v9, v58

    .end local v58    # "appContextInstanceCount":J
    .local v9, "appContextInstanceCount":J
    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1775
    const-wide v13, 0x10500000004L

    move-wide/from16 v7, v56

    .end local v56    # "activityInstanceCount":J
    .local v7, "activityInstanceCount":J
    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1777
    const-wide v13, 0x10500000005L

    move/from16 v15, v36

    .end local v36    # "globalAssetCount":I
    .local v15, "globalAssetCount":I
    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1779
    const-wide v13, 0x10500000006L

    move/from16 v1, v62

    .end local v62    # "globalAssetManagerCount":I
    .local v1, "globalAssetManagerCount":I
    .restart local v48    # "mToken":J
    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1781
    const-wide v13, 0x10500000007L

    move/from16 v2, v63

    .end local v63    # "binderLocalObjectCount":I
    .local v2, "binderLocalObjectCount":I
    invoke-virtual {v0, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1783
    const-wide v13, 0x10500000008L

    move/from16 v1, v64

    .end local v64    # "binderProxyObjectCount":I
    .local v1, "binderProxyObjectCount":I
    .restart local v62    # "globalAssetManagerCount":I
    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1785
    const-wide v13, 0x10300000009L

    .end local v1    # "binderProxyObjectCount":I
    .end local v2    # "binderLocalObjectCount":I
    .restart local v63    # "binderLocalObjectCount":I
    .restart local v64    # "binderProxyObjectCount":I
    div-long v1, v38, v17

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1787
    const-wide v1, 0x1050000000aL

    move-wide/from16 v13, v66

    .end local v66    # "parcelCount":J
    .local v13, "parcelCount":J
    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1788
    const-wide v1, 0x1050000000bL

    move/from16 v5, v65

    .end local v65    # "binderDeathObjectCount":I
    .local v5, "binderDeathObjectCount":I
    .restart local v50    # "viewInstanceCount":J
    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1790
    const-wide v1, 0x1050000000cL

    move-wide/from16 v5, v52

    .end local v52    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .restart local v65    # "binderDeathObjectCount":I
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1792
    const-wide v1, 0x1050000000dL

    move-wide/from16 v5, v54

    .end local v54    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .restart local v52    # "openSslSocketCount":J
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1794
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1797
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1798
    .local v1, "sToken":J
    move-wide/from16 v16, v3

    move-object/from16 v3, v68

    .end local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v16, "oToken":J
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000001L

    .end local v5    # "webviewInstanceCount":J
    .restart local v54    # "webviewInstanceCount":J
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1800
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1802
    iget v6, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    const-wide v4, 0x10500000003L

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1804
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1805
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-wide/from16 v56, v7

    .end local v7    # "activityInstanceCount":J
    .restart local v56    # "activityInstanceCount":J
    if-ge v5, v4, :cond_1

    .line 1806
    iget-object v8, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1808
    .local v8, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-wide v6, 0x20b00000004L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1809
    .local v6, "dToken":J
    move-object/from16 v68, v3

    move/from16 v18, v4

    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .local v18, "n":I
    .restart local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const-wide v3, 0x10900000001L

    move-wide/from16 v58, v9

    .end local v9    # "appContextInstanceCount":J
    .restart local v58    # "appContextInstanceCount":J
    iget-object v9, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1810
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide v9, 0x10500000002L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1811
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1812
    iget v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1814
    iget-object v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1815
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1805
    .end local v6    # "dToken":J
    .end local v8    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-wide/from16 v7, v56

    move-wide/from16 v9, v58

    move-object/from16 v3, v68

    goto :goto_1

    .end local v18    # "n":I
    .end local v58    # "appContextInstanceCount":J
    .end local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "n":I
    .restart local v9    # "appContextInstanceCount":J
    :cond_1
    move-object/from16 v68, v3

    move/from16 v18, v4

    move-wide/from16 v58, v9

    .line 1817
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v9    # "appContextInstanceCount":J
    .restart local v18    # "n":I
    .restart local v58    # "appContextInstanceCount":J
    .restart local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1820
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v3

    .line 1821
    .local v3, "assetAlloc":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1822
    const-wide v4, 0x10900000004L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1826
    :cond_2
    if-eqz p6, :cond_6

    .line 1827
    move-object/from16 v4, p0

    move v5, v15

    .end local v15    # "globalAssetCount":I
    .local v5, "globalAssetCount":I
    iget-object v6, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v6, :cond_3

    move/from16 v6, v32

    goto :goto_2

    :cond_3
    iget-object v6, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1828
    .local v6, "flags":I
    :goto_2
    and-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_4

    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_5

    :cond_4
    move/from16 v32, v35

    :cond_5
    move/from16 v7, v32

    .line 1830
    .local v7, "showContents":Z
    const/16 v8, 0x64

    .line 1831
    invoke-static {v8, v7}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v8

    .line 1830
    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_3

    .line 1826
    .end local v5    # "globalAssetCount":I
    .end local v6    # "flags":I
    .end local v7    # "showContents":Z
    .restart local v15    # "globalAssetCount":I
    :cond_6
    move-object/from16 v4, p0

    move v5, v15

    .line 1833
    .end local v15    # "globalAssetCount":I
    .restart local v5    # "globalAssetCount":I
    :goto_3
    return-void
.end method

.method private greylist-max-o dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 63
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v23, v1, v21

    .line 1575
    .local v23, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v25, v1, v21

    .line 1576
    .local v25, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v27, v1, v21

    .line 1578
    .local v27, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    .line 1579
    .local v29, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Runtime;->gc()V

    .line 1580
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v30, v1, v21

    .line 1581
    .local v30, "dalvikMax":J
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v32, v1, v21

    .line 1582
    .local v32, "dalvikFree":J
    sub-long v34, v30, v32

    .line 1584
    .local v34, "dalvikAllocated":J
    const/4 v13, 0x4

    new-array v1, v13, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v36, 0x0

    aput-object v2, v1, v36

    const-class v2, Landroid/app/Activity;

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-class v2, Landroid/webkit/WebView;

    const/4 v11, 0x2

    aput-object v2, v1, v11

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/16 v37, 0x3

    aput-object v2, v1, v37

    move-object v12, v1

    .line 1590
    .local v12, "classesToCount":[Ljava/lang/Class;
    invoke-static {v12, v14}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v38

    .line 1591
    .local v38, "instanceCounts":[J
    aget-wide v9, v38, v36

    .line 1592
    .local v9, "appContextInstanceCount":J
    aget-wide v7, v38, v14

    .line 1593
    .local v7, "activityInstanceCount":J
    aget-wide v39, v38, v11

    .line 1594
    .local v39, "webviewInstanceCount":J
    aget-wide v5, v38, v37

    .line 1596
    .local v5, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v3

    .line 1597
    .local v3, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v1

    .line 1598
    .local v1, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v15

    .line 1599
    .local v15, "globalAssetCount":I
    move/from16 v16, v15

    .end local v15    # "globalAssetCount":I
    .local v16, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v15

    .line 1600
    .local v15, "globalAssetManagerCount":I
    move/from16 v17, v15

    .end local v15    # "globalAssetManagerCount":I
    .local v17, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v15

    .line 1601
    .local v15, "binderLocalObjectCount":I
    move/from16 v18, v15

    .end local v15    # "binderLocalObjectCount":I
    .local v18, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v15

    .line 1602
    .local v15, "binderProxyObjectCount":I
    move/from16 v19, v15

    .end local v15    # "binderProxyObjectCount":I
    .local v19, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v15

    .line 1603
    .local v15, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v41

    .line 1604
    .local v41, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v43

    .line 1605
    .local v43, "parcelCount":J
    move/from16 v20, v15

    .end local v15    # "binderDeathObjectCount":I
    .local v20, "binderDeathObjectCount":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v15

    .line 1607
    .local v15, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    nop

    .line 1608
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v45

    .line 1609
    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v11, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "unknown"

    .line 1607
    :goto_0
    move-wide/from16 v46, v1

    .end local v1    # "viewRootInstanceCount":J
    .local v46, "viewRootInstanceCount":J
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v48, v3

    .end local v3    # "viewInstanceCount":J
    .local v48, "viewInstanceCount":J
    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v50, v5

    .end local v5    # "openSslSocketCount":J
    .local v50, "openSslSocketCount":J
    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v52, v7

    .end local v7    # "activityInstanceCount":J
    .local v52, "activityInstanceCount":J
    move/from16 v7, v45

    move-object v8, v11

    move-wide/from16 v54, v9

    .end local v9    # "appContextInstanceCount":J
    .local v54, "appContextInstanceCount":J
    move-wide/from16 v9, v23

    move-object/from16 v45, v12

    const/4 v0, 0x2

    .end local v12    # "classesToCount":[Ljava/lang/Class;
    .local v45, "classesToCount":[Ljava/lang/Class;
    move-wide/from16 v11, v25

    move v0, v13

    move/from16 v56, v14

    move-wide/from16 v13, v27

    move-object/from16 v0, p1

    move-object/from16 v62, v15

    move/from16 v57, v16

    move/from16 v58, v17

    move/from16 v59, v18

    move/from16 v60, v19

    move/from16 v61, v20

    .end local v15    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v16    # "globalAssetCount":I
    .end local v17    # "globalAssetManagerCount":I
    .end local v18    # "binderLocalObjectCount":I
    .end local v19    # "binderProxyObjectCount":I
    .end local v20    # "binderDeathObjectCount":I
    .local v57, "globalAssetCount":I
    .local v58, "globalAssetManagerCount":I
    .local v59, "binderLocalObjectCount":I
    .local v60, "binderProxyObjectCount":I
    .local v61, "binderDeathObjectCount":I
    .local v62, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v15, v30

    move-wide/from16 v17, v34

    move-wide/from16 v19, v32

    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1613
    if-eqz p3, :cond_2

    .line 1618
    move-wide/from16 v1, v48

    .end local v48    # "viewInstanceCount":J
    .local v1, "viewInstanceCount":J
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1619
    move-wide/from16 v4, v46

    .end local v46    # "viewRootInstanceCount":J
    .local v4, "viewRootInstanceCount":J
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1620
    move-wide/from16 v6, v54

    .end local v54    # "appContextInstanceCount":J
    .local v6, "appContextInstanceCount":J
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1621
    move-wide/from16 v8, v52

    .end local v52    # "activityInstanceCount":J
    .local v8, "activityInstanceCount":J
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1623
    move/from16 v10, v57

    .end local v57    # "globalAssetCount":I
    .local v10, "globalAssetCount":I
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1624
    move/from16 v11, v58

    .end local v58    # "globalAssetManagerCount":I
    .local v11, "globalAssetManagerCount":I
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1625
    move/from16 v12, v59

    .end local v59    # "binderLocalObjectCount":I
    .local v12, "binderLocalObjectCount":I
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1626
    move/from16 v13, v60

    .end local v60    # "binderProxyObjectCount":I
    .local v13, "binderProxyObjectCount":I
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1628
    move/from16 v14, v61

    .end local v61    # "binderDeathObjectCount":I
    .local v14, "binderDeathObjectCount":I
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1629
    move-wide/from16 v14, v50

    .end local v50    # "openSslSocketCount":J
    .local v14, "openSslSocketCount":J
    .restart local v61    # "binderDeathObjectCount":I
    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1632
    move-object/from16 v3, v62

    .end local v14    # "openSslSocketCount":J
    .end local v62    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v50    # "openSslSocketCount":J
    iget v14, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v14, v14, 0x400

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1633
    iget v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1634
    iget v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1635
    iget v14, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v14, v14, 0x400

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1636
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    iget-object v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 1637
    iget-object v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1638
    .local v15, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move-object/from16 v62, v3

    const/16 v3, 0x2c

    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v62    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1639
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-wide/from16 v46, v4

    .end local v4    # "viewRootInstanceCount":J
    .restart local v46    # "viewRootInstanceCount":J
    iget-wide v3, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1640
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1641
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1642
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    .end local v15    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v46

    move-object/from16 v3, v62

    goto :goto_1

    .line 1645
    .end local v14    # "i":I
    .end local v46    # "viewRootInstanceCount":J
    .end local v62    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "viewRootInstanceCount":J
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1647
    return-void

    .line 1650
    .end local v1    # "viewInstanceCount":J
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "viewRootInstanceCount":J
    .end local v6    # "appContextInstanceCount":J
    .end local v8    # "activityInstanceCount":J
    .end local v10    # "globalAssetCount":I
    .end local v11    # "globalAssetManagerCount":I
    .end local v12    # "binderLocalObjectCount":I
    .end local v13    # "binderProxyObjectCount":I
    .restart local v46    # "viewRootInstanceCount":J
    .restart local v48    # "viewInstanceCount":J
    .restart local v52    # "activityInstanceCount":J
    .restart local v54    # "appContextInstanceCount":J
    .restart local v57    # "globalAssetCount":I
    .restart local v58    # "globalAssetManagerCount":I
    .restart local v59    # "binderLocalObjectCount":I
    .restart local v60    # "binderProxyObjectCount":I
    .restart local v62    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_2
    move-wide/from16 v1, v48

    move-wide/from16 v8, v52

    move-wide/from16 v6, v54

    move/from16 v10, v57

    move/from16 v11, v58

    move/from16 v12, v59

    move/from16 v13, v60

    .end local v48    # "viewInstanceCount":J
    .end local v52    # "activityInstanceCount":J
    .end local v54    # "appContextInstanceCount":J
    .end local v57    # "globalAssetCount":I
    .end local v58    # "globalAssetManagerCount":I
    .end local v59    # "binderLocalObjectCount":I
    .end local v60    # "binderProxyObjectCount":I
    .restart local v1    # "viewInstanceCount":J
    .restart local v6    # "appContextInstanceCount":J
    .restart local v8    # "activityInstanceCount":J
    .restart local v10    # "globalAssetCount":I
    .restart local v11    # "globalAssetManagerCount":I
    .restart local v12    # "binderLocalObjectCount":I
    .restart local v13    # "binderProxyObjectCount":I
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    const-string v4, " Objects"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Views:"

    aput-object v4, v5, v36

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v56

    const-string v4, "ViewRootImpl:"

    const/4 v14, 0x2

    aput-object v4, v5, v14

    .line 1653
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v37

    .line 1652
    const-string v4, "%21s %8d %21s %8d"

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1655
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "AppContexts:"

    aput-object v5, v14, v36

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v56

    const-string v5, "Activities:"

    const/4 v15, 0x2

    aput-object v5, v14, v15

    .line 1656
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v37

    .line 1655
    invoke-static {v0, v4, v14}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "Assets:"

    aput-object v5, v14, v36

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v56

    const-string v5, "AssetManagers:"

    const/4 v15, 0x2

    aput-object v5, v14, v15

    .line 1659
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v37

    .line 1658
    invoke-static {v0, v4, v14}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1661
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "Local Binders:"

    aput-object v5, v14, v36

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v56

    const-string v5, "Proxy Binders:"

    const/4 v15, 0x2

    aput-object v5, v14, v15

    .line 1662
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v37

    .line 1661
    invoke-static {v0, v4, v14}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "Parcel memory:"

    aput-object v5, v14, v36

    div-long v15, v41, v21

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v56

    const-string v5, "Parcel count:"

    const/4 v15, 0x2

    aput-object v5, v14, v15

    .line 1664
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v37

    .line 1663
    invoke-static {v0, v4, v14}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "Death Recipients:"

    aput-object v5, v14, v36

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v56

    const-string v5, "OpenSSL Sockets:"

    const/4 v15, 0x2

    aput-object v5, v14, v15

    .line 1666
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v37

    .line 1665
    invoke-static {v0, v4, v14}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1667
    new-array v5, v15, [Ljava/lang/Object;

    const-string v14, "WebViews:"

    aput-object v14, v5, v36

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v5, v56

    const-string v14, "%21s %8d"

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    const-string v5, " SQL"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    const/4 v5, 0x2

    new-array v15, v5, [Ljava/lang/Object;

    const-string v5, "MEMORY_USED:"

    aput-object v5, v15, v36

    move-object/from16 v5, v62

    .end local v1    # "viewInstanceCount":J
    .end local v62    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v5, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v48    # "viewInstanceCount":J
    iget v1, v5, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v56

    invoke-static {v0, v14, v15}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1673
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "PAGECACHE_OVERFLOW:"

    aput-object v1, v2, v36

    iget v1, v5, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v1, v1, 0x400

    .line 1674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v56

    const-string v1, "MALLOC_SIZE:"

    const/4 v14, 0x2

    aput-object v1, v2, v14

    iget v1, v5, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v37

    .line 1673
    invoke-static {v0, v4, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1675
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    iget-object v1, v5, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1677
    .local v1, "N":I
    if-lez v1, :cond_7

    .line 1678
    const-string v2, " DATABASES"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v14, "pgsz"

    aput-object v14, v4, v36

    const-string v14, "dbsz"

    aput-object v14, v4, v56

    const-string v14, "Lookaside(b)"

    const/4 v15, 0x2

    aput-object v14, v4, v15

    const-string v14, "cache"

    aput-object v14, v4, v37

    const-string v14, "Dbname"

    const/4 v15, 0x4

    aput-object v14, v4, v15

    const-string v14, "  %8s %8s %14s %14s  %s"

    invoke-static {v0, v14, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1681
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 1682
    iget-object v15, v5, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1683
    .restart local v15    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move/from16 v16, v1

    .end local v1    # "N":I
    .local v16, "N":I
    new-array v1, v2, [Ljava/lang/Object;

    .line 1684
    move-object/from16 v17, v3

    iget-wide v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_3

    iget-wide v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object/from16 v2, v17

    :goto_3
    aput-object v2, v1, v36

    .line 1685
    iget-wide v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v2, v2, v19

    if-lez v2, :cond_4

    iget-wide v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object/from16 v2, v17

    :goto_4
    aput-object v2, v1, v56

    .line 1686
    iget v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v2, :cond_5

    iget v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object/from16 v2, v17

    :goto_5
    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v2, v1, v37

    iget-object v2, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/16 v19, 0x4

    aput-object v2, v1, v19

    .line 1683
    invoke-static {v0, v14, v1}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1681
    .end local v15    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v2, 0x5

    goto :goto_2

    .end local v16    # "N":I
    .restart local v1    # "N":I
    :cond_6
    move/from16 v16, v1

    move-object/from16 v17, v3

    const/4 v3, 0x2

    .end local v1    # "N":I
    .restart local v16    # "N":I
    goto :goto_6

    .line 1677
    .end local v4    # "i":I
    .end local v16    # "N":I
    .restart local v1    # "N":I
    :cond_7
    move/from16 v16, v1

    move-object/from16 v17, v3

    const/4 v3, 0x2

    .line 1692
    .end local v1    # "N":I
    .restart local v16    # "N":I
    :goto_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "assetAlloc":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 1694
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string v4, " Asset Allocations"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 1693
    :cond_8
    move-object/from16 v2, v17

    .line 1700
    :goto_7
    if-eqz p7, :cond_c

    .line 1701
    move v4, v3

    move-object/from16 v3, p0

    iget-object v14, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_9

    iget-object v14, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v14

    if-nez v4, :cond_a

    :cond_9
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_b

    :cond_a
    move/from16 v36, v56

    :cond_b
    move/from16 v4, v36

    .line 1704
    .local v4, "showContents":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    const-string v2, " Unreachable memory"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    const/16 v2, 0x64

    invoke-static {v2, v4}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 1700
    .end local v4    # "showContents":Z
    :cond_c
    move-object/from16 v3, p0

    .line 1708
    :goto_8
    return-void
.end method

.method private blacklist getDatabasesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1858
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performDirectAction$2(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # Ljava/lang/String;
    .param p3, "x$2"    # Landroid/os/Bundle;
    .param p4, "x$3"    # Landroid/os/CancellationSignal;
    .param p5, "x$4"    # Landroid/os/RemoteCallback;

    .line 2094
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestDirectActions$1(Ljava/lang/Object;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "x$2"    # Landroid/os/CancellationSignal;
    .param p4, "x$3"    # Landroid/os/RemoteCallback;
    .param p5, "x$4"    # I

    .line 2076
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static synthetic blacklist lambda$scheduleTrimMemory$0(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 1930
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "agent"    # Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1483
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 1486
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1487
    return-void
.end method

.method public final blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;FLjava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJIZ)V
    .locals 17
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p6, "instrumentationName"    # Landroid/content/ComponentName;
    .param p7, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p8, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p9, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p10, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p11, "debugMode"    # I
    .param p12, "enableBinderTracking"    # Z
    .param p13, "trackAllocation"    # Z
    .param p14, "isRestrictedBackupMode"    # Z
    .param p15, "persistent"    # Z
    .param p16, "config"    # Landroid/content/res/Configuration;
    .param p17, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p18, "services"    # Ljava/util/Map;
    .param p19, "coreSettings"    # Landroid/os/Bundle;
    .param p20, "dssScale"    # F
    .param p21, "buildSerial"    # Ljava/lang/String;
    .param p22, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p23, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p24, "disabledCompatChanges"    # [J
    .param p25, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p26, "startRequestedElapsedTime"    # J
    .param p28, "startRequestedUptime"    # J
    .param p30, "processDisplayId"    # I
    .param p31, "isFixedAppContextDisplay"    # Z

    .line 1282
    move-object/from16 v1, p0

    move-object/from16 v2, p19

    if-eqz p18, :cond_0

    .line 1305
    invoke-static/range {p18 .. p18}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1309
    :cond_0
    const-string v3, "CoreState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1310
    .local v4, "states":Landroid/os/Bundle;
    iget-object v0, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 1311
    .local v5, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v4}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1313
    :try_start_0
    iget-object v0, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0, v5}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured at : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityThread"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1321
    .end local v4    # "states":Landroid/os/Bundle;
    .end local v5    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static/range {p30 .. p30}, Landroid/app/ActivityThread;->-$$Nest$sfputsProcessDisplayId(I)V

    .line 1324
    invoke-static/range {p31 .. p31}, Landroid/app/ActivityThread;->-$$Nest$sfputsFixedAppContextDisplay(Z)V

    .line 1327
    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1329
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 1330
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1331
    move-object/from16 v4, p2

    iput-object v4, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1332
    move-object/from16 v5, p3

    iput-object v5, v0, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 1333
    move-object/from16 v6, p4

    iput-object v6, v0, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 1334
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/ProviderInfoList;->getList()Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1335
    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1336
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1337
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1338
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1339
    move/from16 v11, p11

    iput v11, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1340
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 1341
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 1342
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1343
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 1344
    move-object/from16 v2, p16

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1345
    move-object/from16 v2, p17

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1346
    move-object/from16 v2, p7

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1347
    move-object/from16 v2, p21

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1348
    move-object/from16 v2, p22

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    .line 1351
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v16, :cond_1

    .line 1352
    move/from16 v2, p20

    iput v2, v0, Landroid/app/ActivityThread$AppBindData;->dssScale:F

    goto :goto_1

    .line 1351
    :cond_1
    move/from16 v2, p20

    .line 1356
    :goto_1
    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 1357
    move-object/from16 v2, p24

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    .line 1358
    move-object/from16 v2, p25

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    .line 1359
    move-wide/from16 v2, p26

    iput-wide v2, v0, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    .line 1360
    move-wide/from16 v2, p28

    iput-wide v2, v0, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    .line 1361
    iget-object v2, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1362
    return-void
.end method

.method public greylist-max-o clearDnsCache()V
    .locals 1

    .line 1391
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1394
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 1395
    return-void
.end method

.method public blacklist clearIdsTrainingData(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 2162
    invoke-static {p1}, Landroid/app/IdsController;->clearTrainingData(Z)V

    .line 2163
    return-void
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1503
    return-void
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1529
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1531
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1532
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1533
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1534
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1535
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x88

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1536
    :catch_0
    move-exception v1

    .line 1537
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1540
    nop

    .line 1541
    return-void

    .line 1539
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1540
    throw v1
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1852
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1853
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1854
    return-void
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1871
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    .line 1877
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1882
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1883
    nop

    .line 1885
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1895
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 1882
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1882
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1880
    return-void

    .line 1882
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1883
    throw v0

    .line 1896
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 1897
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1899
    :goto_1
    return-void
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1837
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1839
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1840
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1841
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1842
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1843
    :catch_0
    move-exception v1

    .line 1844
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpGfxInfo failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1847
    nop

    .line 1848
    return-void

    .line 1846
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1847
    throw v1
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "finishCallback"    # Landroid/os/RemoteCallback;

    .line 1462
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1463
    .local v0, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1464
    iput-boolean p2, v0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1465
    iput-boolean p3, v0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1466
    iput-object p4, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1470
    :try_start_0
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1476
    nop

    .line 1477
    iput-object p6, v0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1478
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1479
    return-void

    .line 1475
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1471
    :catch_0
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "Failed to duplicate heap dump file descriptor"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1473
    return-void

    .line 1475
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1476
    throw v1
.end method

.method public greylist-max-o dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 10
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;

    .line 1562
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1563
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1565
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-direct/range {v2 .. v9}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1568
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1569
    nop

    .line 1570
    return-void

    .line 1567
    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1568
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1569
    throw v2
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    .line 1714
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1716
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    :try_start_0
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1719
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1718
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1719
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1720
    throw v0
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1545
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1547
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1548
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1549
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1550
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1554
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1555
    nop

    .line 1556
    return-void

    .line 1554
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1555
    throw v1
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1515
    new-instance v0, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpResourcesData;-><init>()V

    .line 1517
    .local v0, "data":Landroid/app/ActivityThread$DumpResourcesData;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1518
    iput-object p2, v0, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1519
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1520
    :catch_0
    move-exception v1

    .line 1521
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpResources failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1524
    nop

    .line 1525
    return-void

    .line 1523
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1524
    throw v1
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1425
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1427
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1428
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1429
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1430
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1431
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1435
    nop

    .line 1436
    return-void

    .line 1434
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1435
    throw v1
.end method

.method public blacklist forceGc()V
    .locals 1

    .line 2142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 2143
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 2144
    return-void
.end method

.method public blacklist getProfileLength(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2150
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2152
    return-void
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .locals 1

    .line 2055
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 2056
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2116
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 2117
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 2118
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 2119
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2120
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2121
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2122
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2123
    return-void
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .line 1994
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1995
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1997
    :cond_0
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z

    .line 2102
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2103
    .local v0, "auths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2104
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3, p3}, Landroid/app/ActivityThread;->-$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v4

    .line 2105
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2106
    :try_start_0
    iput-object p1, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 2107
    iget-object v6, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2108
    monitor-exit v5

    .line 2103
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2108
    .restart local v3    # "auth":Ljava/lang/String;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2110
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_0
    return-void
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 2085
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 2086
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p4, :cond_0

    .line 2087
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v1

    .line 2089
    .local v1, "transport":Landroid/os/ICancellationSignal;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2090
    .local v2, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2091
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2090
    const-string v4, "key_cancellation_signal"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2092
    invoke-virtual {p4, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2094
    .end local v1    # "transport":Landroid/os/ICancellationSignal;
    .end local v2    # "cancellationResult":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2097
    return-void
.end method

.method public greylist-max-o processInBackground()V
    .locals 3

    .line 1420
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1421
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1422
    return-void
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1456
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1457
    return-void
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 1909
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1910
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1911
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1912
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1913
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 1914
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 1915
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1916
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 2067
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 2068
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p3, :cond_0

    .line 2069
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v1

    .line 2071
    .local v1, "transport":Landroid/os/ICancellationSignal;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2072
    .local v2, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2073
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2072
    const-string v4, "key_cancellation_signal"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2074
    invoke-virtual {p3, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2076
    .end local v1    # "transport":Landroid/os/ICancellationSignal;
    .end local v2    # "cancellationResult":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x7

    .line 2078
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2076
    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2079
    return-void
.end method

.method public final greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 1365
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1366
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1367
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1368
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1369
    return-void
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1380
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1381
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 1382
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1383
    return-void
.end method

.method public final greylist-max-o scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .line 1220
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1221
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1222
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1223
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1224
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1229
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1230
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1507
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1508
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1509
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1510
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x86

    invoke-static {v1, v2, v0, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1511
    return-void
.end method

.method public final blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .param p4, "userId"    # I
    .param p5, "operationType"    # I

    .line 1187
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1188
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1189
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1190
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1191
    iput p4, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1192
    iput p5, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->operationType:I

    .line 1194
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1195
    return-void
.end method

.method public final greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 1209
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1210
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 1211
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1212
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1213
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1215
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public final blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "userId"    # I

    .line 1199
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1200
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1201
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1202
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1204
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1989
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1990
    return-void
.end method

.method public final greylist-max-o scheduleExit()V
    .locals 3

    .line 1372
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1373
    return-void
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 1968
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1969
    return-void
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2047
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2048
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2049
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2050
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2051
    return-void
.end method

.method public greylist-max-o scheduleLowMemory()V
    .locals 3

    .line 1451
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1452
    return-void
.end method

.method public greylist-max-o scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1946
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    .line 1947
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1946
    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1948
    return-void
.end method

.method public final greylist-max-o scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    .line 1177
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x0

    move/from16 v3, p9

    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1178
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    iget-object v2, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1179
    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 1180
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object v2, p2

    iput-object v2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1181
    move-object/from16 v4, p3

    iput-object v4, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1182
    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v6, 0x71

    invoke-virtual {v5, v6, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1183
    return-void
.end method

.method public greylist-max-o scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p9, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1445
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1447
    return-void
.end method

.method public final greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 1241
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1243
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 1245
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 1246
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1247
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 1248
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1249
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 1250
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1252
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1243
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1257
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1258
    return-void
.end method

.method public final greylist-max-o scheduleSuicide()V
    .locals 3

    .line 1376
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1377
    return-void
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2061
    return-void
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 1942
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1943
    return-void
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .line 1930
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1931
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1930
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1931
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1933
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 1934
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_0

    .line 1935
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1937
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1939
    :goto_0
    return-void
.end method

.method public final greylist-max-o scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1233
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1234
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1235
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1237
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1238
    return-void
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 1919
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1920
    return-void
.end method

.method public blacklist setHttpProxyInfo(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 1414
    invoke-static {p1}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    .line 1416
    return-void
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .locals 2
    .param p1, "procStateSeq"    # J

    .line 1961
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1962
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V

    .line 1963
    monitor-exit v0

    .line 1964
    return-void

    .line 1963
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setProcessState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1951
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1952
    return-void
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .locals 3
    .param p1, "group"    # I

    .line 1495
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    goto :goto_0

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting process group to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public greylist-max-o startBinderTracking()V
    .locals 3

    .line 2002
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_0

    .line 2003
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2004
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2005
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->trackingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2007
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2008
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2010
    :goto_0
    return-void
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 2015
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x97

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2018
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2019
    throw v0

    .line 2016
    :catch_0
    move-exception v0

    .line 2018
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2019
    nop

    .line 2020
    return-void
.end method

.method public blacklist stopBinderTrackingAndDumpSystemServer(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 2027
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2028
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2029
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2030
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2031
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2032
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2033
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2034
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2035
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2036
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->trackingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    nop

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2040
    throw v0

    .line 2037
    :catch_0
    move-exception v0

    .line 2039
    nop

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2040
    nop

    .line 2041
    return-void
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 1903
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1904
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .locals 4

    .line 1399
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1401
    .local v1, "app":Landroid/app/Application;
    if-nez v1, :cond_0

    .line 1404
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/ActivityThread;->-$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V

    .line 1405
    monitor-exit v0

    return-void

    .line 1407
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    invoke-static {v1}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 1410
    return-void

    .line 1407
    .end local v1    # "app":Landroid/app/Application;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1923
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1924
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1925
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1926
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1927
    return-void
.end method

.method public final greylist-max-o updateTimePrefs(I)V
    .locals 1
    .param p1, "timeFormatPreference"    # I

    .line 1975
    if-nez p1, :cond_0

    .line 1976
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_0

    .line 1977
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1978
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_0

    .line 1982
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_1
    const/4 v0, 0x0

    .line 1984
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_0
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 1985
    return-void
.end method

.method public greylist-max-o updateTimeZone()V
    .locals 1

    .line 1386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1387
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 2129
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2130
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2132
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2133
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2134
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2135
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2136
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa3

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2137
    return-void
.end method
