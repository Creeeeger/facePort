.class public final Lcom/android/settings/applications/ProcStatsEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAvgBgMem:J

.field public final mAvgRunMem:J

.field public mBestTargetPackage:Ljava/lang/String;

.field public final mBgDuration:J

.field public final mBgWeight:D

.field public mLabel:Ljava/lang/CharSequence;

.field public final mMaxBgMem:J

.field public final mMaxRunMem:J

.field public final mName:Ljava/lang/String;

.field public final mPackage:Ljava/lang/String;

.field public final mPackages:Ljava/util/ArrayList;

.field public final mRunDuration:J

.field public final mRunWeight:D

.field public final mServices:Landroid/util/ArrayMap;

.field public final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ProcStatsEntry$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    invoke-virtual {p1, p4, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide p1, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    iget-wide v2, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    long-to-double v0, v0

    long-to-double p1, p1

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    iget-wide p1, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v0, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    iget-wide p3, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    long-to-double p3, v0

    long-to-double p1, p1

    mul-double/2addr p3, p1

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    iput-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iput-wide p5, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    iput-wide p5, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    iput-wide p5, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    iput-wide p5, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    long-to-double p1, p7

    long-to-double p3, p5

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/settings/applications/ProcStatsData;->sEntryCompare:Lcom/android/settings/applications/ProcStatsData$1;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    return-void

    :cond_0
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_1
    iget-object v7, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    move-object/from16 v7, p2

    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget-object v9, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget v10, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    move v9, v4

    :goto_2
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-virtual {v8, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    const-string v11, "/"

    const-string v12, "ProcStatsEntry"

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "No package state found for "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v12, p3

    move-object/from16 v14, p4

    goto :goto_4

    :cond_3
    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v14, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v13, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "No process "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " found in package state "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance v11, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v10, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-direct {v11, v13, v10, v12, v14}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v12, p3

    move-object/from16 v14, p4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_13

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    cmpl-double v1, v6, v8

    if-lez v1, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    return-void

    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/16 v8, -0x1

    move v1, v4

    move v10, v1

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_12

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v12, v11, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v6, v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_8

    goto/16 :goto_a

    :cond_8
    :try_start_0
    iget-object v12, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v12, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v14, :cond_9

    goto/16 :goto_b

    :cond_9
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_b

    iget-wide v11, v11, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_a

    cmp-long v14, v11, v8

    if-lez v14, :cond_11

    :cond_a
    move v10, v5

    move-wide v8, v11

    goto :goto_b

    :cond_b
    if-eqz v10, :cond_c

    goto :goto_b

    :cond_c
    iget-object v12, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v14, v4

    :goto_6
    if-ge v14, v12, :cond_e

    iget-object v15, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v15, 0x0

    :goto_7
    const-wide/16 v17, 0x0

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v4

    :goto_8
    if-ge v5, v2, :cond_10

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/ProcStatsEntry$Service;

    move/from16 p2, v5

    iget-wide v4, v12, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v12, v4, v17

    if-lez v12, :cond_f

    move-wide/from16 v17, v4

    goto :goto_9

    :cond_f
    add-int/lit8 v5, p2, 0x1

    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    :goto_9
    cmp-long v2, v17, v8

    if-lez v2, :cond_11

    iget-object v2, v11, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    move-wide/from16 v8, v17

    goto :goto_b

    :catch_0
    :goto_a
    move-object/from16 v13, p1

    :catch_1
    :cond_11
    :goto_b
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_12
    iget-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    goto :goto_c

    :cond_13
    move v1, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    :cond_14
    :goto_c
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
