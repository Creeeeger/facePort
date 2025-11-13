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

.field private static final blacklist NO_DOUBLES:[D

.field private static final blacklist NO_INTS:[I

.field private static final blacklist NO_LONGS:[J


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_INTS:[I

    new-array v1, v0, [D

    sput-object v1, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_DOUBLES:[D

    new-array v0, v0, [J

    sput-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_LONGS:[J

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    return-void
.end method


# virtual methods
.method public blacklist getCalorie()[D
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_DOUBLES:[D

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "CalorieArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCount()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDistance()[D
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_DOUBLES:[D

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DistanceArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDuration()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_INTS:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DurationArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStepCount()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_INTS:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepCountArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStepLevel()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_INTS:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeStamp()[J
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    sget-object v1, Landroid/hardware/scontext/SContextStepLevelMonitor;->NO_LONGS:[J

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v3, "DurationArray"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    new-array v0, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    if-nez v3, :cond_1

    iget-object v4, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    add-int/lit8 v6, v3, -0x1

    aget v6, v2, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v0, "DataBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
