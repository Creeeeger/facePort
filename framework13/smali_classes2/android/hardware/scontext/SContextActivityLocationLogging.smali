.class public Landroid/hardware/scontext/SContextActivityLocationLogging;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityLocationLogging.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mInfo:Landroid/os/Bundle;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    .line 154
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 321
    return-void
.end method


# virtual methods
.method public blacklist getAltitude()[D
    .locals 3

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "altitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 253
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getLatitude()[D
    .locals 3

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "latitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 223
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getLoggingSize()I
    .locals 3

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "size":I
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 179
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 181
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist getLongitude()[D
    .locals 3

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "longitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 238
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getStayingAreaRadius()[I
    .locals 2

    .line 271
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStayingAreaStatus()[I
    .locals 2

    .line 280
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStayingTimeDuration()[I
    .locals 2

    .line 262
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimestamp()[J
    .locals 7

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "timestamp":[J
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaTimeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_3

    .line 195
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 196
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingTimeDuration"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 197
    .local v1, "duration":[I
    array-length v2, v1

    new-array v0, v2, [J

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 199
    if-nez v2, :cond_1

    .line 200
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_1

    .line 202
    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v0, v3

    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 198
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "duration":[I
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 205
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 206
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryTimeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_3

    .line 205
    :cond_4
    :goto_2
    nop

    .line 208
    :goto_3
    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 290
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 291
    const-string v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 293
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 307
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void
.end method
