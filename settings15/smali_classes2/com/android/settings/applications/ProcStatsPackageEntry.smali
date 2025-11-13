.class public final Lcom/android/settings/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvgBgMem:J

.field public mAvgRunMem:J

.field public mBgDuration:J

.field public mBgWeight:D

.field public final mEntries:Ljava/util/ArrayList;

.field public mMaxBgMem:J

.field public mMaxRunMem:J

.field public final mPackage:Ljava/lang/String;

.field public mRunDuration:J

.field public mRunWeight:D

.field public mUiLabel:Ljava/lang/String;

.field public mUiTargetApp:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public static getFrequency(FLandroidx/fragment/app/FragmentActivity;)Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-lez v0, :cond_0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f140304

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f142cdd

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f141e04

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final retrieveUiData(Landroidx/fragment/app/FragmentActivity;Landroid/content/pm/PackageManager;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    :try_start_0
    const-string v1, "os"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x408200

    if-eqz v0, :cond_0

    const-string v0, "android"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    const p2, 0x7f141d93

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "could not find package: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const-string p2, "ProcStatsEntry"

    invoke-static {p1, p0, p2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateMetrics()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iput-wide v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iget-wide v5, v2, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
