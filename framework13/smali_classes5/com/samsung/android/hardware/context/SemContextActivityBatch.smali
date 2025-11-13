.class public Lcom/samsung/android/hardware/context/SemContextActivityBatch;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityBatch.java"


# static fields
.field public static final whitelist ACCURACY_HIGH:I = 0x2

.field public static final whitelist ACCURACY_LOW:I = 0x0

.field public static final whitelist ACCURACY_MID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityBatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HISTORY_MODE:I = 0x1

.field public static final blacklist NORMAL_MODE:I = 0x0

.field public static final blacklist STATUS_BIKE:I = 0x5

.field public static final whitelist STATUS_RUN:I = 0x3

.field public static final whitelist STATUS_STATIONARY:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_VEHICLE:I = 0x4

.field public static final whitelist STATUS_WALK:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    .line 187
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->readFromParcel(Landroid/os/Parcel;)V

    .line 194
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist getAccuracyArray()[I
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    return v0
.end method

.method public whitelist getMostActivity()I
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "MostActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getStatusArray()[I
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimeStampArray()[J
    .locals 8

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "timestamp":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v2, "Count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "size":I
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v3, "Duration"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 206
    .local v2, "duration":[J
    if-eqz v2, :cond_2

    .line 207
    new-array v0, v1, [J

    .line 208
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 209
    if-nez v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_1

    .line 212
    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v2, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 208
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "size":I
    .end local v2    # "duration":[J
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 217
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_2

    .line 216
    :cond_2
    nop

    .line 219
    :goto_2
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 276
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 277
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    .line 278
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 291
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 292
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
