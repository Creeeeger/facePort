.class public Landroid/app/ondeviceintelligence/InferenceInfo;
.super Ljava/lang/Object;
.source "InferenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist endTimeMs:J

.field private final blacklist startTimeMs:J

.field private final blacklist suspendedTimeMs:J

.field private final blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ondeviceintelligence/InferenceInfo$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/InferenceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/InferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    iput-wide p2, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    iput-wide p4, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    iput-wide p6, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEndTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    return-wide v0
.end method

.method public blacklist getStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    return-wide v0
.end method

.method public blacklist getSuspendedTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->startTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->endTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/ondeviceintelligence/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
