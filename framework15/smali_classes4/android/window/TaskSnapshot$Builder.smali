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

.field private blacklist mCaptureTime:J

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContainsSecureLayers:Z

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mCutoutInsets:Landroid/graphics/Rect;

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsFolded:Z

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .locals 24

    move-object/from16 v0, p0

    new-instance v23, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v23

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-wide v4, v0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v8, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v9, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v10, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v15, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    move/from16 v16, v14

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    move/from16 v17, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v18, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v19, v14

    iget-object v14, v0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mContainsSecureLayers:Z

    move/from16 v21, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mIsFolded:Z

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v22}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;ZZ)V

    return-object v23
.end method

.method public blacklist getPixelFormat()I
    .locals 1

    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    return-object p0
.end method

.method public blacklist setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public blacklist setContainsSecureLayers(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mContainsSecureLayers:Z

    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setFolded(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsFolded:Z

    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    return-object p0
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    return-object p0
.end method
