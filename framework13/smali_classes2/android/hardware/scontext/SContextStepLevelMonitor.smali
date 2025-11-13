.class public Landroid/hardware/scontext/SContextStepLevelMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextStepLevelMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextStepLevelMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    .line 105
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 111
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    .line 246
    return-void
.end method


# virtual methods
.method public blacklist getCalorie()[D
    .locals 2

    .line 194
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "CalorieArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCount()I
    .locals 2

    .line 120
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDistance()[D
    .locals 2

    .line 185
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DistanceArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDuration()[I
    .locals 2

    .line 153
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DurationArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 2

    .line 204
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStepCount()[I
    .locals 2

    .line 176
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepCountArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStepLevel()[I
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeStamp()[J
    .locals 8

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "timestamp":[J
    iget v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "size":I
    iget-object v2, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v3, "DurationArray"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 133
    .local v2, "duration":[I
    new-array v0, v1, [J

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 135
    if-nez v3, :cond_0

    .line 136
    iget-object v4, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_1

    .line 138
    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    add-int/lit8 v6, v3, -0x1

    aget v6, v2, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 134
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "size":I
    .end local v2    # "duration":[I
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 141
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 142
    iget-object v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_3

    .line 141
    :cond_3
    :goto_2
    nop

    .line 144
    :goto_3
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 215
    iput-object p1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 216
    const-string v0, "DataBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 217
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    .line 218
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 231
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 233
    iget v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return-void
.end method
