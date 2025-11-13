.class public Lcom/android/internal/os/SemWakeupReasonInfo;
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
            "Lcom/android/internal/os/SemWakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist count:J

.field private blacklist recordTime:J

.field private blacklist tag:Ljava/lang/String;

.field private blacklist time:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/internal/os/SemWakeupReasonInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/SemWakeupReasonInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/SemWakeupReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJ)V
    .locals 1
    .param p1, "recordTime"    # J
    .param p3, "count"    # J
    .param p5, "time"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    .line 46
    iput-wide p1, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->recordTime:J

    .line 47
    iput-wide p3, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 48
    iput-wide p5, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 49
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->recordTime:J

    .line 33
    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 34
    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "time"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->recordTime:J

    .line 40
    iput-wide p2, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 41
    iput-wide p4, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist calculateDelta(Lcom/android/internal/os/SemWakeupReasonInfo;)V
    .locals 6
    .param p1, "prev"    # Lcom/android/internal/os/SemWakeupReasonInfo;

    .line 68
    iget-object v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    invoke-virtual {p1}, Lcom/android/internal/os/SemWakeupReasonInfo;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 71
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    invoke-virtual {p1}, Lcom/android/internal/os/SemWakeupReasonInfo;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 72
    return-void
.end method

.method public blacklist clone()Lcom/android/internal/os/SemWakeupReasonInfo;
    .locals 1

    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SemWakeupReasonInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 115
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

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/os/SemWakeupReasonInfo;->clone()Lcom/android/internal/os/SemWakeupReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    return-wide v0
.end method

.method public blacklist getRecordTime()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->recordTime:J

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    return-wide v0
.end method

.method public blacklist updateInfo(JJ)V
    .locals 0
    .param p1, "count"    # J
    .param p3, "time"    # J

    .line 75
    iput-wide p1, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    .line 76
    iput-wide p3, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    .line 77
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 104
    iget-object v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Lcom/android/internal/os/SemWakeupReasonInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    return-void
.end method
