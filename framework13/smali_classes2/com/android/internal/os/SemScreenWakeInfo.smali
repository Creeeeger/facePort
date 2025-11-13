.class public Lcom/android/internal/os/SemScreenWakeInfo;
.super Ljava/lang/Object;
.source "SemScreenWakeInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/SemScreenWakeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist count:J

.field private blacklist tag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/internal/os/SemScreenWakeInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/SemScreenWakeInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/SemScreenWakeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist calculateDelta(Lcom/android/internal/os/SemScreenWakeInfo;)V
    .locals 6
    .param p1, "prev"    # Lcom/android/internal/os/SemScreenWakeInfo;

    .line 47
    iget-object v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    invoke-virtual {p1}, Lcom/android/internal/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    .line 50
    return-void
.end method

.method public blacklist clone()Lcom/android/internal/os/SemScreenWakeInfo;
    .locals 1

    .line 83
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SemScreenWakeInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 86
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
    invoke-virtual {p0}, Lcom/android/internal/os/SemScreenWakeInfo;->clone()Lcom/android/internal/os/SemScreenWakeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 76
    iget-object v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lcom/android/internal/os/SemScreenWakeInfo;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    return-void
.end method
