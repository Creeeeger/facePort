.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mCutoutInsets:Landroid/graphics/Rect;

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsRealSnapshot:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private blacklist mOrientation:I

.field private blacklist mPixelFormat:I

.field private blacklist mRotation:I

.field private blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mTaskSize:Landroid/graphics/Point;

.field private blacklist mTopActivity:Landroid/content/ComponentName;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .locals 20

    .line 450
    move-object/from16 v0, p0

    new-instance v19, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v19

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-object v4, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v7, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v8, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v9, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v13, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    iget v15, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v16, v12

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v17, v12

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V

    return-object v19
.end method

.method public blacklist getPixelFormat()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "appearance"    # I

    .line 416
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 417
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 373
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 374
    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 396
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 397
    return-object p0
.end method

.method public blacklist setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "cutoutInsets"    # Landroid/graphics/Rect;

    .line 427
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    .line 428
    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "hasImeSurface"    # Z

    .line 436
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 437
    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "id"    # J

    .line 358
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 359
    return-object p0
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "realSnapshot"    # Z

    .line 406
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 407
    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "isTranslucent"    # Z

    .line 421
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 422
    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 401
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 402
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .line 378
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 379
    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "pixelFormat"    # I

    .line 445
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 446
    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "rotation"    # I

    .line 383
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 384
    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 368
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 369
    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "size"    # Landroid/graphics/Point;

    .line 391
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 392
    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 363
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 364
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0
    .param p1, "windowingMode"    # I

    .line 411
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 412
    return-object p0
.end method
