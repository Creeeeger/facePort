.class public Landroid/window/TaskSnapshot;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshot$Builder;,
        Landroid/window/TaskSnapshot$ReferenceFlags;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REFERENCE_BROADCAST:I = 0x1

.field public static final blacklist REFERENCE_CACHE:I = 0x2

.field public static final blacklist REFERENCE_PERSIST:I = 0x4


# instance fields
.field private final blacklist mAppearance:I

.field private final blacklist mCaptureTime:J

.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContainsSecureLayers:Z

.field private final blacklist mContentInsets:Landroid/graphics/Rect;

.field private final blacklist mCutoutInsets:Landroid/graphics/Rect;

.field private final blacklist mHasImeSurface:Z

.field private final blacklist mId:J

.field private blacklist mInternalReferences:I

.field private blacklist mIsFolded:Z

.field private final blacklist mIsLowResolution:Z

.field private final blacklist mIsRealSnapshot:Z

.field private final blacklist mIsTranslucent:Z

.field private final blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private final blacklist mOrientation:I

.field private final blacklist mRotation:I

.field private final blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTaskSize:Landroid/graphics/Point;

.field private final blacklist mTopActivityComponent:Landroid/content/ComponentName;

.field private final blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TaskSnapshot$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v21}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/ColorSpace;->getId()I

    move-result v7

    if-gez v7, :cond_0

    sget-object v7, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, p7

    :goto_0
    iput-object v7, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    move/from16 v7, p8

    iput v7, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    move/from16 v8, p9

    iput v8, v0, Landroid/window/TaskSnapshot;->mRotation:I

    new-instance v9, Landroid/graphics/Point;

    move-object/from16 v10, p10

    invoke-direct {v9, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v11, p11

    invoke-direct {v9, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v12, p12

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    move/from16 v9, p13

    iput-boolean v9, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    move/from16 v13, p14

    iput-boolean v13, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    move/from16 v14, p15

    iput v14, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    move/from16 v15, p16

    iput v15, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    move/from16 v2, p18

    iput-boolean v2, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v2, p19

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/window/TaskSnapshot;->mCutoutInsets:Landroid/graphics/Rect;

    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/window/TaskSnapshot;->mContainsSecureLayers:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mRotation:I

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mContainsSecureLayers:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskSnapshot-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addReference(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist containsSecureLayers()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mContainsSecureLayers:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppearance()I
    .locals 1

    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    return v0
.end method

.method public blacklist getCaptureTime()J
    .locals 2

    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    return-wide v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public greylist getContentInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getCutoutInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mCutoutInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getId()J
    .locals 2

    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    return-wide v0
.end method

.method public blacklist getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getOrientation()I
    .locals 1

    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public blacklist getRotation()I
    .locals 1

    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    return v0
.end method

.method public greylist getSnapshot()Landroid/graphics/GraphicBuffer;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTaskSize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getTopActivityComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasImeSurface()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return v0
.end method

.method public blacklist isFolded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsFolded:Z

    return v0
.end method

.method public greylist isLowResolution()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    return v0
.end method

.method public greylist isRealSnapshot()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public declared-synchronized blacklist removeReference(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    invoke-static {}, Lcom/android/window/flags/Flags;->releaseSnapshotAggressively()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{ mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCaptureTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mCaptureTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTopActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mColorSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTaskSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLetterboxInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsLowResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsRealSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAppearance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsTranslucent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasImeSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mInternalReferences="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mInternalReferences:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mContainsSecureLayers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
