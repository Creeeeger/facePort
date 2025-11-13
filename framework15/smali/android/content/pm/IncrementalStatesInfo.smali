.class public Landroid/content/pm/IncrementalStatesInfo;
.super Ljava/lang/Object;
.source "IncrementalStatesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/IncrementalStatesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsLoading:Z

.field private blacklist mLoadingCompletedTime:J

.field private final blacklist mProgress:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/IncrementalStatesInfo$1;

    invoke-direct {v0}, Landroid/content/pm/IncrementalStatesInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/IncrementalStatesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mLoadingCompletedTime:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/IncrementalStatesInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/IncrementalStatesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    iput p2, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    iput-wide p3, p0, Landroid/content/pm/IncrementalStatesInfo;->mLoadingCompletedTime:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLoadingCompletedTime()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mLoadingCompletedTime:J

    return-wide v0
.end method

.method public blacklist getProgress()F
    .locals 1

    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    return v0
.end method

.method public blacklist isLoading()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mLoadingCompletedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
