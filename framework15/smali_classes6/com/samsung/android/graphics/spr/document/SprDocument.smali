.class public Lcom/samsung/android/graphics/spr/document/SprDocument;
.super Ljava/lang/Object;
.source "SprDocument.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist ANIMATION_MODE_BATTERY:I = 0xa

.field public static final blacklist ANIMATION_MODE_NONE:I = 0x0

.field public static final blacklist ANIMATION_MODE_STORAGE_SPACE:I = 0xb

.field public static final blacklist ANIMATION_MODE_TIME_DAY_IN_WEEK:I = 0x9

.field public static final blacklist ANIMATION_MODE_TIME_HOUR_IN_DAY:I = 0x4

.field public static final blacklist ANIMATION_MODE_TIME_HOUR_IN_WEEK:I = 0x8

.field public static final blacklist ANIMATION_MODE_TIME_MILLISECOND_IN_DAY:I = 0x1

.field public static final blacklist ANIMATION_MODE_TIME_MILLISECOND_IN_WEEK:I = 0x5

.field public static final blacklist ANIMATION_MODE_TIME_MINUTE_IN_DAY:I = 0x3

.field public static final blacklist ANIMATION_MODE_TIME_MINUTE_IN_WEEK:I = 0x7

.field public static final blacklist ANIMATION_MODE_TIME_SECOND_IN_DAY:I = 0x2

.field public static final blacklist ANIMATION_MODE_TIME_SECOND_IN_WEEK:I = 0x6

.field public static final blacklist DEFAULT_DENSITY_SCALE:F = 2.0f

.field public static final blacklist HEADER_SIZE:I = 0x61

.field public static final blacklist MAJOR_VERSION:S = 0x3030s

.field public static final blacklist MINOR_VERSION:S = 0x3034s

.field public static final blacklist REPEAT_MODE_RESTART:B = 0x2t

.field public static final blacklist REPEAT_MODE_REVERSE:B = 0x1t

.field public static final blacklist RESERVED_SIZE:I = 0x0

.field public static final blacklist SPRTAG:I = 0x53505200

.field public static final blacklist SVFTAG:I = 0x53564600

.field private static final blacklist TAG:Ljava/lang/String; = "SPRDocument"

.field private static blacklist mBasePaint:Landroid/graphics/Paint;


# instance fields
.field private blacklist isPredraw:Z

.field public final blacklist mAnimationInterval:I

.field public final blacklist mAnimationMode:I

.field private blacklist mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mBottom:F

.field public final blacklist mDensity:F

.field private blacklist mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFileAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field private blacklist mIsInitialized:Z

.field public final blacklist mLeft:F

.field private blacklist mLoadingTime:J

.field public final blacklist mName:Ljava/lang/String;

.field public final blacklist mNinePatchBottom:F

.field public final blacklist mNinePatchLeft:F

.field public final blacklist mNinePatchRight:F

.field public final blacklist mNinePatchTop:F

.field public final blacklist mPaddingBottom:F

.field public final blacklist mPaddingLeft:F

.field public final blacklist mPaddingRight:F

.field public final blacklist mPaddingTop:F

.field private blacklist mReferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mRepeatCount:I

.field public final blacklist mRepeatMode:B

.field public final blacklist mRight:F

.field public final blacklist mTop:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FFFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iput p3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iput p4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iput p5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v3, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    iput-boolean v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    iput-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;

    move-object/from16 v5, p2

    invoke-direct {v3, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v8

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v9

    iput-short v9, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v9

    iput-short v9, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v9

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v10

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    iput v12, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    const/4 v12, 0x1

    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v14, 0x3030

    if-lt v13, v14, :cond_0

    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v15, 0x3033

    if-lt v13, v15, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v12

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v13

    iput-byte v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    goto :goto_0

    :cond_0
    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    const/4 v13, 0x2

    iput-byte v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    :goto_0
    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v13, v14, :cond_1

    iget-short v13, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v15, 0x3034

    if-lt v13, v15, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    iput v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    goto :goto_1

    :cond_1
    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    iput v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    :goto_1
    const v13, 0x53505200

    if-eq v8, v13, :cond_3

    const v13, 0x53564600

    if-ne v8, v13, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "wrong file format"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    const-string v13, "unknown element type:"

    const-string v15, "SPRDocument"

    if-eqz v11, :cond_5

    int-to-long v4, v11

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v16

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v2

    int-to-long v1, v14

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    move-object/from16 v1, v18

    goto :goto_4

    :pswitch_0
    new-instance v1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {v1, v3}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move/from16 v19, v2

    :goto_4
    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v14, 0x3030

    goto :goto_3

    :cond_5
    int-to-long v1, v9

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v4

    const/4 v5, 0x0

    iget-short v14, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    move/from16 v18, v2

    const/16 v2, 0x3030

    if-lt v14, v2, :cond_6

    iget-short v14, v3, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v2, 0x3032

    if-lt v14, v2, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    :cond_6
    sparse-switch v4, :sswitch_data_0

    const/4 v14, 0x0

    const/4 v2, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v8

    move/from16 v19, v9

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto :goto_6

    :sswitch_0
    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_1
    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_2
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_3
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_4
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_5
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    goto :goto_6

    :sswitch_6
    const/4 v14, 0x0

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    move v14, v8

    move/from16 v19, v9

    :goto_6
    if-eqz v2, :cond_7

    iget-object v8, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v8, v14

    move/from16 v2, v18

    move/from16 v9, v19

    goto/16 :goto_5

    :cond_8
    move/from16 v18, v2

    move v14, v8

    move/from16 v19, v9

    int-to-long v1, v10

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v12, :cond_9

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x1

    iget v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    if-lt v1, v5, :cond_a

    iget v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v3, v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_8

    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "width"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "dp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    :cond_1
    const-string v11, "height"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    const-string v11, "viewportHeight"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_3
    const-string v11, "viewportWidth"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_4
    const-string v11, "autoMirrored"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    const-string v11, "tintMode"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    const-string v11, "tint"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iput v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    div-float/2addr v8, v6

    iput v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    iput-byte v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v4, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v7, v0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    iget-byte v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-boolean v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    goto :goto_2

    :pswitch_1
    iput-boolean v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    nop

    :goto_2
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    goto :goto_0

    :cond_2
    :goto_3
    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist appendAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist appendFileAttribute(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    return-void
.end method

.method public blacklist appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    return-void
.end method

.method public blacklist appendReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist applyTimeAnimationMode()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v5, 0x61

    if-ne v4, v5, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v7, 0x2

    const v6, 0x5265c00

    goto :goto_2

    :pswitch_1
    const/4 v7, 0x2

    const v6, 0x36ee80

    goto :goto_2

    :pswitch_2
    const/4 v7, 0x2

    const v6, 0xea60

    goto :goto_2

    :pswitch_3
    const/4 v7, 0x2

    const/16 v6, 0x3e8

    goto :goto_2

    :pswitch_4
    const/4 v7, 0x2

    const/4 v6, 0x1

    goto :goto_2

    :pswitch_5
    const v6, 0x36ee80

    goto :goto_2

    :pswitch_6
    const v6, 0xea60

    goto :goto_2

    :pswitch_7
    const/16 v6, 0x3e8

    goto :goto_2

    :pswitch_8
    const/4 v6, 0x1

    nop

    :goto_2
    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-static {v8, v5, v7, v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->get(IIII)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/SprDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    iget-object v4, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-direct {v0, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    if-lt v1, v3, :cond_1

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->clone()Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist close()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void
.end method

.method public blacklist draw(Landroid/graphics/Canvas;IIII)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V

    :cond_0
    int-to-float v0, p2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iget v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    int-to-float v3, p2

    add-float v6, v2, v3

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    int-to-float v3, p3

    add-float v7, v2, v3

    sget-object v8, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    if-gez p4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_3

    invoke-static {p1, p0, p2, p3, p5}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V

    :cond_3
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->close()V

    return-void
.end method

.method public blacklist getFileAttribute(I)Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public blacklist getFileAttributeSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFrameAnimationCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getLoadingTime()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    long-to-int v0, v0

    return v0
.end method

.method public blacklist getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public blacklist getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public blacklist getReferenceSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalAttributeCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalAttributeCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalElementCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalElementCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalSegmentCount()I

    move-result v0

    return v0
.end method

.method public blacklist getValueAnimationObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isIntrinsic()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNinePatch()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isPredraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    return v0
.end method

.method public blacklist preDraw(I)V
    .locals 10

    new-instance v0, Landroid/graphics/Paint;

    sget-object v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    sget-object v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    :goto_0
    if-gtz p1, :cond_2

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    :cond_2
    return-void
.end method

.method public blacklist removeAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v2, "Already closed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "SPRDocument"

    const-string v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public blacklist toSPR(Ljava/io/OutputStream;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v5, "SPRDocument"

    const-string v7, "Already closed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    add-int/2addr v5, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-byte v11, v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v11, v10

    check-cast v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iget v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ne v12, v9, :cond_2

    iget v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ne v12, v9, :cond_2

    iget-object v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v1, v12, v6

    iget-object v12, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v2, v12, v6

    iget v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget-object v13, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v13, v13, v6

    sub-float v3, v12, v13

    iget v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget-object v13, v11, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v13, v13, v6

    sub-float v4, v12, v13

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    const/4 v8, 0x4

    :goto_2
    add-int/2addr v5, v8

    :cond_5
    const/4 v8, 0x4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    :goto_3
    if-ge v10, v11, :cond_6

    iget-object v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v12}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v13

    add-int/2addr v8, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    const v10, 0x53505200

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v10, 0x3030

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v10, 0x3034

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v10, v5, 0x61

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v10, v5, 0x61

    add-int/2addr v10, v8

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez v5, :cond_7

    move v10, v6

    goto :goto_4

    :cond_7
    const/16 v10, 0x61

    :goto_4
    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v5, :cond_9

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-byte v11, v10, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    :cond_8
    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    :goto_6
    if-ge v6, v10, :cond_a

    iget-object v11, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v13, v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v10, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_7

    :cond_b
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
