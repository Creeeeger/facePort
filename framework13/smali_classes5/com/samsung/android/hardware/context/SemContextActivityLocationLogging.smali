.class public Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityLocationLogging.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LPP_RESOLUTION_HIGH:I = 0x2

.field public static final blacklist LPP_RESOLUTION_LOW:I = 0x0

.field public static final blacklist LPP_RESOLUTION_MID:I = 0x1

.field public static final blacklist TYPE_MOVING:I = 0x2

.field public static final blacklist TYPE_NONE:I = 0x0

.field public static final blacklist TYPE_STAYING:I = 0x1

.field public static final blacklist TYPE_TRAJECTORY:I = 0x3


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    .line 210
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    .line 379
    return-void
.end method


# virtual methods
.method public blacklist getAltitude()[D
    .locals 3

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "altitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 308
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 310
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getLatitude()[D
    .locals 3

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "latitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 278
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 280
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getLoggingSize()I
    .locals 3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "size":I
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 235
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 236
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist getLongitude()[D
    .locals 3

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "longitude":[D
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 291
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 293
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 295
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getStayingAreaRadius()[I
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStayingAreaStatus()[I
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStayingTimeDuration()[I
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimestamp()[J
    .locals 7

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "timestamp":[J
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaTimeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_2

    .line 250
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 251
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingTimeDuration"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 252
    .local v1, "duration":[I
    if-eqz v1, :cond_3

    .line 253
    array-length v2, v1

    new-array v0, v2, [J

    .line 254
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 255
    if-nez v2, :cond_1

    .line 256
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v0, v3

    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 254
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "duration":[I
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 263
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryTimeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_2

    .line 262
    :cond_3
    nop

    .line 265
    :goto_2
    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 348
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 349
    const-string v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 350
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    .line 351
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 363
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 365
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return-void
.end method
