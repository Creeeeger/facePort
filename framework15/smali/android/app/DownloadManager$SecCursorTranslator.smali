.class Landroid/app/DownloadManager$SecCursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecCursorTranslator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method private blacklist getErrorCode(I)J
    .locals 2

    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_2

    :cond_1
    int-to-long v0, p1

    return-wide v0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    int-to-long v0, p1

    return-wide v0

    :sswitch_0
    const-wide/16 v0, 0x3f0

    return-wide v0

    :sswitch_1
    const-wide/16 v0, 0x3f1

    return-wide v0

    :sswitch_2
    const-wide/16 v0, 0x3ef

    return-wide v0

    :sswitch_3
    const-wide/16 v0, 0x3ee

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_3
        0xc7 -> :sswitch_2
        0x1e8 -> :sswitch_1
        0x1e9 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getLocalUri()Ljava/lang/String;
    .locals 6

    const-string v0, "destination"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "hint"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "_data"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-wide/16 v4, 0x6

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    const-string/jumbo v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v3

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    const-string v2, "_id"

    invoke-direct {p0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/app/DownloadManager$SecCursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist getPausedReason(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getUnderlyingLong(Ljava/lang/String;)J
    .locals 2

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isLongColumn(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetLONG_COLUMNS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist translateLong(Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "total_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-string v0, "dd_contentSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_6
    const-string v0, "downloadmethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_7
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_8
    const-string/jumbo v0, "storage_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "storagetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-string/jumbo v0, "range_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_a
    const-string/jumbo v0, "range_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-string/jumbo v0, "range_first_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_c
    nop

    const-string/jumbo v0, "lastmod"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist translateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "mimetype"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "local_filename"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_data"

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "dd_fileName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "dd_vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "dd_majorVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v0, "dd_primaryMimeType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "dd_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    nop

    invoke-direct {p0}, Landroid/app/DownloadManager$SecCursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getBlob(I)[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getColumnCount()I
    .locals 1

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " columns exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/DownloadManager;->-$$Nest$sfgetSEC_COLUMNS()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public whitelist getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getInt(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getLong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getReason(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getShort(I)S
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$SecCursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$SecCursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist translateStatus(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x10

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    return v0

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_5
    const/high16 v0, 0x10000

    return v0

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
