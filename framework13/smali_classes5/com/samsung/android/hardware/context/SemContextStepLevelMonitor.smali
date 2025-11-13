.class public Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextStepLevelMonitor.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTORY_MODE:I = 0x1

.field public static final blacklist NORMAL_MODE:I = 0x0

.field public static final whitelist STEP_LEVEL_NORMAL:I = 0x3

.field public static final whitelist STEP_LEVEL_POWER:I = 0x4

.field public static final whitelist STEP_LEVEL_SEDENTARY:I = 0x2

.field public static final whitelist STEP_LEVEL_STATIONARY:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    .line 160
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 167
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist getCalorieArray()[D
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "CalorieArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getDistanceArray()[D
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DistanceArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDurationArray()[I
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DurationArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getStepCountArray()[I
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepCountArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStepLevelArray()[I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimeStampArray()[J
    .locals 8

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "timestamp":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "size":I
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v3, "DurationArray"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 188
    .local v2, "duration":[I
    if-eqz v2, :cond_2

    .line 189
    new-array v0, v1, [J

    .line 190
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 191
    if-nez v3, :cond_0

    .line 192
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_1

    .line 194
    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    add-int/lit8 v6, v3, -0x1

    aget v6, v2, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 190
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "size":I
    .end local v2    # "duration":[I
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_2

    .line 198
    :cond_2
    nop

    .line 201
    :goto_2
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 273
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 274
    const-string v0, "DataBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 275
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    .line 276
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 291
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
