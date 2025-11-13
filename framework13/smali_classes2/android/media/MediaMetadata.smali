.class public final Landroid/media/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata$Builder;,
        Landroid/media/MediaMetadata$RatingKey;,
        Landroid/media/MediaMetadata$BitmapKey;,
        Landroid/media/MediaMetadata$LongKey;,
        Landroid/media/MediaMetadata$TextKey;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EDITOR_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final whitelist METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final whitelist METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final whitelist METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final whitelist METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final whitelist METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final whitelist METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final whitelist METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final whitelist METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final whitelist METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final whitelist METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final whitelist METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final whitelist METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final whitelist METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final whitelist METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final whitelist METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final whitelist METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final whitelist METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final whitelist METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final whitelist METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final whitelist METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final whitelist METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final whitelist METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final whitelist METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final whitelist METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final whitelist METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final whitelist METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final whitelist METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final whitelist METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final greylist-max-o METADATA_TYPE_BITMAP:I = 0x2

.field private static final greylist-max-o METADATA_TYPE_INVALID:I = -0x1

.field private static final greylist-max-o METADATA_TYPE_LONG:I = 0x0

.field private static final greylist-max-o METADATA_TYPE_RATING:I = 0x3

.field private static final greylist-max-o METADATA_TYPE_TEXT:I = 0x1

.field private static final greylist-max-o PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final greylist-max-o PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final greylist-max-o PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final blacklist mBitmapDimensionLimit:I

.field private final greylist-max-o mBundle:Landroid/os/Bundle;

.field private greylist-max-o mDescription:Landroid/media/MediaDescription;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBitmapDimensionLimit(Landroid/media/MediaMetadata;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaMetadata;->mBitmapDimensionLimit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 23

    .line 329
    const-string v0, "android.media.metadata.TITLE"

    const-string v1, "android.media.metadata.ARTIST"

    const-string v2, "android.media.metadata.ALBUM"

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    const-string v4, "android.media.metadata.WRITER"

    const-string v5, "android.media.metadata.AUTHOR"

    const-string v6, "android.media.metadata.COMPOSER"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    .line 339
    const-string v0, "android.media.metadata.DISPLAY_ICON"

    const-string v1, "android.media.metadata.ART"

    const-string v2, "android.media.metadata.ALBUM_ART"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 345
    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v4, "android.media.metadata.ART_URI"

    const-string v5, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    .line 359
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    sput-object v6, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 360
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "android.media.metadata.TITLE"

    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v10, "android.media.metadata.ARTIST"

    invoke-virtual {v6, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v6, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v14, "android.media.metadata.ALBUM"

    invoke-virtual {v6, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v15, "android.media.metadata.AUTHOR"

    invoke-virtual {v6, v15, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v11, "android.media.metadata.WRITER"

    invoke-virtual {v6, v11, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v7, "android.media.metadata.COMPOSER"

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    move-object/from16 v16, v11

    const-string v11, "android.media.metadata.COMPILATION"

    invoke-virtual {v6, v11, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-object/from16 v17, v9

    const-string v9, "android.media.metadata.DATE"

    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-object/from16 v18, v13

    const-string v13, "android.media.metadata.YEAR"

    invoke-virtual {v6, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-object/from16 v19, v13

    const-string v13, "android.media.metadata.GENRE"

    invoke-virtual {v6, v13, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    move-object/from16 v20, v13

    const-string v13, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v6, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-object/from16 v21, v9

    const-string v9, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v6, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v9, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v6, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v9, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v6, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v9, 0x2

    move-object/from16 v22, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {v6, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v5, "android.media.metadata.RATING"

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v6, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {v6, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v6, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v6, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v0, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v6, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    .line 395
    const/16 v3, 0x64

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    const/16 v1, 0x65

    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    const v1, 0x10000001

    const-string v3, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    const/16 v1, 0xd

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    const/16 v1, 0xf

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    const/4 v1, 0x5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    const/16 v1, 0xe

    const-string v2, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    const/16 v1, 0x9

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    const/4 v1, 0x6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    const/16 v1, 0xa

    const-string v2, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    const/4 v1, 0x7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    const/16 v1, 0xb

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    const/16 v1, 0x8

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    new-instance v0, Landroid/media/MediaMetadata$1;

    invoke-direct {v0}, Landroid/media/MediaMetadata$1;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "bitmapDimensionLimit"    # I

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    .line 426
    iput p2, p0, Landroid/media/MediaMetadata;->mBitmapDimensionLimit:I

    .line 427
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;ILandroid/media/MediaMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaMetadata;->mBitmapDimensionLimit:I

    .line 438
    const-string v0, "android.media.metadata.ART"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 439
    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 440
    const-string v0, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 441
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r getKeyFromMetadataEditorKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "editorKey"    # I

    .line 665
    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 692
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 693
    return v0

    .line 696
    :cond_0
    instance-of v1, p1, Landroid/media/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 697
    return v2

    .line 700
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MediaMetadata;

    .line 702
    .local v1, "m":Landroid/media/MediaMetadata;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 703
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 704
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 706
    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 707
    return v2

    .line 711
    :pswitch_1
    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 712
    return v2

    .line 702
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 721
    .end local v3    # "i":I
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 525
    goto :goto_0

    .line 522
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getBitmapDimensionLimit()I
    .locals 1

    .line 543
    iget v0, p0, Landroid/media/MediaMetadata;->mBitmapDimensionLimit:I

    return v0
.end method

.method public whitelist getDescription()Landroid/media/MediaDescription;
    .locals 12

    .line 581
    iget-object v0, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    if-eqz v0, :cond_0

    .line 582
    return-object v0

    .line 585
    :cond_0
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "mediaId":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 588
    .local v1, "text":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 589
    .local v2, "icon":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 592
    .local v3, "iconUri":Landroid/net/Uri;
    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 593
    .local v4, "displayText":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 596
    aput-object v4, v1, v7

    .line 597
    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    .line 598
    const-string v5, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v6

    goto :goto_1

    .line 601
    :cond_1
    const/4 v5, 0x0

    .line 602
    .local v5, "textIndex":I
    const/4 v9, 0x0

    .line 603
    .local v9, "keyIndex":I
    :goto_0
    array-length v10, v1

    if-ge v5, v10, :cond_3

    sget-object v10, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 604
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "keyIndex":I
    .local v11, "keyIndex":I
    aget-object v9, v10, v9

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 605
    .local v9, "next":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 607
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "textIndex":I
    .local v10, "textIndex":I
    aput-object v9, v1, v5

    move v5, v10

    .line 609
    .end local v9    # "next":Ljava/lang/CharSequence;
    .end local v10    # "textIndex":I
    .restart local v5    # "textIndex":I
    :cond_2
    move v9, v11

    goto :goto_0

    .line 613
    .end local v5    # "textIndex":I
    .end local v11    # "keyIndex":I
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v10, v9

    if-ge v5, v10, :cond_5

    .line 614
    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 615
    .local v9, "next":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 616
    move-object v2, v9

    .line 617
    goto :goto_3

    .line 613
    .end local v9    # "next":Landroid/graphics/Bitmap;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 622
    .end local v5    # "i":I
    :cond_5
    :goto_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v10, v9

    if-ge v5, v10, :cond_7

    .line 623
    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 624
    .local v9, "next":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 625
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 626
    goto :goto_5

    .line 622
    .end local v9    # "next":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 630
    .end local v5    # "i":I
    :cond_7
    :goto_5
    const/4 v5, 0x0

    .line 631
    .local v5, "mediaUri":Landroid/net/Uri;
    const-string v9, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 632
    .local v9, "mediaUriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 633
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 636
    :cond_8
    new-instance v10, Landroid/media/MediaDescription$Builder;

    invoke-direct {v10}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 637
    .local v10, "bob":Landroid/media/MediaDescription$Builder;
    invoke-virtual {v10, v0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 638
    aget-object v7, v1, v7

    invoke-virtual {v10, v7}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 639
    aget-object v7, v1, v8

    invoke-virtual {v10, v7}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 640
    aget-object v6, v1, v6

    invoke-virtual {v10, v6}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 641
    invoke-virtual {v10, v2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 642
    invoke-virtual {v10, v3}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 643
    invoke-virtual {v10, v5}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 644
    iget-object v6, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-string v7, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 645
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v6, "bundle":Landroid/os/Bundle;
    nop

    .line 647
    invoke-virtual {p0, v7}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 646
    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 648
    invoke-virtual {v10, v6}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    .line 650
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {v10}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    .line 652
    return-object v6
.end method

.method public whitelist getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getRating(Ljava/lang/String;)Landroid/media/Rating;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "rating":Landroid/media/Rating;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/Rating;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 507
    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Rating."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 475
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 476
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 479
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 726
    const/16 v0, 0x11

    .line 728
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 729
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 730
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 732
    :pswitch_0
    mul-int/lit8 v2, v0, 0x1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 733
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    move v0, v2

    goto :goto_1

    .line 735
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    add-int/2addr v2, v4

    .line 736
    .end local v0    # "hashCode":I
    .restart local v2    # "hashCode":I
    move v0, v2

    .line 728
    .end local v2    # "hashCode":I
    .end local v3    # "key":Ljava/lang/String;
    .restart local v0    # "hashCode":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "i":I
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist size()I
    .locals 1

    .line 563
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 553
    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 554
    iget v0, p0, Landroid/media/MediaMetadata;->mBitmapDimensionLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return-void
.end method
