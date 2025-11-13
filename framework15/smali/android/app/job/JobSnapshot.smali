.class public Landroid/app/job/JobSnapshot;
.super Ljava/lang/Object;
.source "JobSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsRunnable:Z

.field private final blacklist mJob:Landroid/app/job/JobInfo;

.field private final blacklist mSatisfiedConstraints:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/job/JobSnapshot$1;

    invoke-direct {v0}, Landroid/app/job/JobSnapshot$1;-><init>()V

    sput-object v0, Landroid/app/job/JobSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/job/JobInfo;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    iput p2, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    iput-boolean p3, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    iput-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    return-void
.end method

.method private blacklist satisfied(I)Z
    .locals 1

    iget v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getJobInfo()Landroid/app/job/JobInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public blacklist isBatteryNotLowSatisfied()Z
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isChargingSatisfied()Z
    .locals 2

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public blacklist isRequireDeviceIdleSatisfied()Z
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRequireStorageNotLowSatisfied()Z
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/job/JobSnapshot;->satisfied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRunnable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobSnapshot;->mJob:Landroid/app/job/JobInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/job/JobSnapshot;->mSatisfiedConstraints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/job/JobSnapshot;->mIsRunnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
