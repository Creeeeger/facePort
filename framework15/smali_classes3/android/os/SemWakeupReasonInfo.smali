.class public Landroid/os/SemWakeupReasonInfo;
.super Ljava/lang/Object;
.source "SemWakeupReasonInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemWakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist count:I

.field private blacklist recordTime:J

.field private blacklist tag:Ljava/lang/String;

.field private blacklist time:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemWakeupReasonInfo$1;

    invoke-direct {v0}, Landroid/os/SemWakeupReasonInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemWakeupReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    iput-wide p1, p0, Landroid/os/SemWakeupReasonInfo;->recordTime:J

    iput p3, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    iput-wide p4, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->recordTime:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    iput-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->recordTime:J

    iput p2, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    iput-wide p3, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method


# virtual methods
.method public blacklist calculateDelta(Landroid/os/SemWakeupReasonInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    invoke-virtual {p1}, Landroid/os/SemWakeupReasonInfo;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    iget-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    invoke-virtual {p1}, Landroid/os/SemWakeupReasonInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method

.method public blacklist clone()Landroid/os/SemWakeupReasonInfo;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemWakeupReasonInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/SemWakeupReasonInfo;->clone()Landroid/os/SemWakeupReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount()I
    .locals 1

    iget v0, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    return v0
.end method

.method public blacklist getRecordTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->recordTime:J

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-wide v0
.end method

.method public blacklist updateInfo(IJ)V
    .locals 0

    iput p1, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    iput-wide p2, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/SemWakeupReasonInfo;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemWakeupReasonInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
