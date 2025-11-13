.class public final Lcom/android/internal/app/procstats/ProcessStats$PackageState;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageState"
.end annotation


# instance fields
.field public final blacklist mAssociations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/AssociationState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final blacklist mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field public final blacklist mProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mUid:I

.field public final blacklist mVersionCode:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    return-void
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JJI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10900000001L

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10500000002L

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000003L

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mVersionCode:J

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    const-wide v3, 0x20b00000004L

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v5, v13

    move-wide/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/app/procstats/ServiceState;

    const-wide v3, 0x20b00000005L

    move-object v1, v8

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ServiceState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v7, v1

    :goto_2
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/app/procstats/AssociationState;

    const-wide v3, 0x20b00000006L

    move-object v1, v8

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/AssociationState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/AssociationState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v7, Lcom/android/internal/app/procstats/AssociationState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/procstats/AssociationState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    move-object v0, v7

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
