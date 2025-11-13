.class public Lcom/samsung/android/sume/op/OpRuntimeStat;
.super Ljava/lang/Object;
.source "OpRuntimeStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/op/OpRuntimeStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist bufferType:Ljava/lang/String;

.field private blacklist elapsedTimeMs:J

.field private blacklist model:Ljava/lang/String;

.field private blacklist runtimeList:Ljava/lang/String;

.field private blacklist totalRuntimes:I

.field private blacklist version:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/sume/op/OpRuntimeStat$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/op/OpRuntimeStat$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/op/OpRuntimeStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->totalRuntimes:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->runtimeList:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->bufferType:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->elapsedTimeMs:J

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "totalRuntimes"    # I
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "model",
            "totalRuntimes",
            "version"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->totalRuntimes:I

    .line 27
    iput-object p3, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "version"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBufferType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->bufferType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getElapsedTimeMs()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->elapsedTimeMs:J

    return-wide v0
.end method

.method public blacklist getModel()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRuntimeList()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->runtimeList:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotalRuntimes()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->totalRuntimes:I

    return v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBufferType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bufferType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->bufferType:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public blacklist setElapsedTimeMs(J)V
    .locals 0
    .param p1, "elapsedTimeMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedTimeMs"
        }
    .end annotation

    .line 114
    iput-wide p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->elapsedTimeMs:J

    .line 115
    return-void
.end method

.method public blacklist setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public blacklist setRuntimeList(Ljava/lang/String;)V
    .locals 0
    .param p1, "runtimeList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtimeList"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->runtimeList:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public blacklist setTotalRuntimes(I)V
    .locals 0
    .param p1, "totalRuntimes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalRuntimes"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->totalRuntimes:I

    .line 80
    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 119
    const-string v4, "========== stat[%s] ==========\n"

    invoke-static {v4, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 120
    const-string v4, " model: %s\n"

    invoke-static {v4, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 121
    const-string v4, " nn version: %s\n"

    invoke-static {v4, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->runtimeList:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 122
    const-string v4, " runtimes: %s\n"

    invoke-static {v4, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->bufferType:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 123
    const-string v4, " buffer-type: %s\n"

    invoke-static {v4, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->elapsedTimeMs:J

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " total processing time[ms]: %d\n"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->totalRuntimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->runtimeList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->bufferType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/samsung/android/sume/op/OpRuntimeStat;->elapsedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method
