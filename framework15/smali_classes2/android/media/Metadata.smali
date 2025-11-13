.class public Landroid/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ALBUM:I = 0x8

.field public static final greylist-max-o ALBUM_ART:I = 0x12

.field public static final greylist-max-o ANY:I = 0x0

.field public static final greylist-max-o ARTIST:I = 0x9

.field public static final greylist-max-o AUDIO_BIT_RATE:I = 0x15

.field public static final greylist-max-o AUDIO_CODEC:I = 0x1a

.field public static final greylist-max-o AUDIO_SAMPLE_RATE:I = 0x17

.field public static final greylist-max-o AUTHOR:I = 0xa

.field public static final greylist-max-o BIT_RATE:I = 0x14

.field public static final greylist-max-o BOOLEAN_VAL:I = 0x3

.field public static final greylist-max-o BYTE_ARRAY_VAL:I = 0x7

.field public static final greylist-max-o CD_TRACK_MAX:I = 0x10

.field public static final greylist-max-o CD_TRACK_NUM:I = 0xf

.field public static final greylist-max-o COMMENT:I = 0x6

.field public static final greylist-max-o COMPOSER:I = 0xb

.field public static final greylist-max-o COPYRIGHT:I = 0x7

.field public static final greylist-max-o DATE:I = 0xd

.field public static final greylist-max-o DATE_VAL:I = 0x6

.field public static final greylist-max-o DOUBLE_VAL:I = 0x5

.field public static final greylist-max-o DRM_CRIPPLED:I = 0x1f

.field public static final greylist-max-o DURATION:I = 0xe

.field private static final greylist-max-o FIRST_CUSTOM:I = 0x2000

.field public static final greylist-max-o GENRE:I = 0xc

.field public static final greylist-max-o INTEGER_VAL:I = 0x2

.field private static final greylist-max-o LAST_SYSTEM:I = 0x1f

.field private static final greylist-max-o LAST_TYPE:I = 0x7

.field public static final greylist-max-o LONG_VAL:I = 0x4

.field public static final greylist-max-o MATCH_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MATCH_NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MIME_TYPE:I = 0x19

.field public static final greylist-max-o NUM_TRACKS:I = 0x1e

.field public static final greylist PAUSE_AVAILABLE:I = 0x1

.field public static final greylist-max-o RATING:I = 0x11

.field public static final greylist SEEK_AVAILABLE:I = 0x4

.field public static final greylist SEEK_BACKWARD_AVAILABLE:I = 0x2

.field public static final greylist SEEK_FORWARD_AVAILABLE:I = 0x3

.field public static final greylist-max-o STRING_VAL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "media.Metadata"

.field public static final greylist-max-o TITLE:I = 0x5

.field public static final greylist-max-o VIDEO_BIT_RATE:I = 0x16

.field public static final greylist-max-o VIDEO_CODEC:I = 0x1b

.field public static final greylist-max-o VIDEO_FRAME:I = 0x13

.field public static final greylist-max-o VIDEO_FRAME_RATE:I = 0x18

.field public static final greylist-max-o VIDEO_HEIGHT:I = 0x1c

.field public static final greylist-max-o VIDEO_WIDTH:I = 0x1d

.field private static final greylist-max-o kInt32Size:I = 0x4

.field private static final greylist-max-o kMetaHeaderSize:I = 0x8

.field private static final greylist-max-o kMetaMarker:I = 0x4d455441

.field private static final greylist-max-o kRecordHeaderSize:I = 0xc


# instance fields
.field private final greylist-max-o mKeyToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Landroid/media/Metadata;->MATCH_NONE:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/Metadata;->MATCH_ALL:Ljava/util/Set;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    return-void
.end method

.method private greylist-max-o checkMetadataId(I)Z
    .locals 2

    if-lez p1, :cond_1

    const/16 v0, 0x1f

    if-ge v0, p1, :cond_0

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid metadata ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media.Metadata"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o checkType(II)V
    .locals 5

    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o firstCustomId()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public static greylist-max-o lastSytemId()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public static greylist-max-o lastType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private greylist-max-o scanAllRecords(Landroid/os/Parcel;I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :goto_0
    const/16 v2, 0xc

    const-string v3, "media.Metadata"

    if-le p2, v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gt v5, v2, :cond_0

    const-string v2, "Record is too short"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Duplicate metadata ID found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v7, 0x7

    if-le v6, v7, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v4, v5}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sub-int/2addr p2, v5

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid metadata type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    nop

    :cond_5
    :goto_2
    if-nez p2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    return v2

    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ran out of data or error on record "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public greylist getBoolean(I)Z
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist getByteArray(I)[B
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDate(I)Ljava/util/Date;
    .locals 6

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v3

    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method public greylist getDouble(I)D
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getInt(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public greylist getLong(I)J
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist has(I)Z
    .locals 3

    invoke-direct {p0, p1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist parse(Landroid/os/Parcel;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const-string v1, "media.Metadata"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    if-lt v5, v4, :cond_4

    if-ge v4, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v5, 0x4d455441    # 2.0691458E8f

    if-eq v3, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marker missing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2

    :cond_2
    add-int/lit8 v1, v4, -0x8

    invoke-direct {p0, p1, v1}, Landroid/media/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2

    :cond_3
    iput-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " avail "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2
.end method
