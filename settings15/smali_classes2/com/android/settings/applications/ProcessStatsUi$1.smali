.class public final Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget p0, p0, Lcom/android/settings/applications/ProcessStatsUi$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide p0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-double p0, p0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide p0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    cmpg-double p0, p0, v0

    if-gez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
