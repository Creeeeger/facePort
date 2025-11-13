.class public Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextSensorStatusCheck.java"


# static fields
.field public static final whitelist ACC_DATA_DEFAULT:I = 0x9c40

.field public static final whitelist ACC_DATA_OFFSET:I = 0x2

.field public static final whitelist ACC_DATA_STUCK:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SENSORHUB_RESET:I = 0x3

.field public static final whitelist SENSOR_DATA_NORMAL:I


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist getResetCount()I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "ResetCnt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getSensorHubLastEventTimeStamp()J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "SensorHubLastEventTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSensorHubResetTimeStampArray()[J
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "SensorHubResetTimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSensorHubResetTimeStampArraySize()I
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "SensorHubResetTimeStampArraySize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getStatus()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getXAxis()I
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "XAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getYAxis()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "YAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getZAxis()I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "ZAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 243
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 244
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 258
    return-void
.end method
