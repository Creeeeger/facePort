.class public Landroid/view/InputDevice$Builder;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDisplayId:I

.field private blacklist mControllerNumber:I

.field private blacklist mDescriptor:Ljava/lang/String;

.field private blacklist mDeviceBus:I

.field private blacklist mEnabled:Z

.field private blacklist mGeneration:I

.field private blacklist mHasBattery:Z

.field private blacklist mHasButtonUnderPad:Z

.field private blacklist mHasMicrophone:Z

.field private blacklist mHasSensor:Z

.field private blacklist mHasVibrator:Z

.field private blacklist mId:I

.field private blacklist mIsExternal:Z

.field private blacklist mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private blacklist mKeyboardLanguageTag:Ljava/lang/String;

.field private blacklist mKeyboardLayoutType:Ljava/lang/String;

.field private blacklist mKeyboardType:I

.field private blacklist mMotionRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProductId:I

.field private blacklist mShouldSmoothScroll:Z

.field private blacklist mSources:I

.field private blacklist mUsiVersionMajor:I

.field private blacklist mUsiVersionMinor:I

.field private blacklist mVendorId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputDevice$Builder;->mId:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mGeneration:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    const-string v1, ""

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    iput v0, p0, Landroid/view/InputDevice$Builder;->mVendorId:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mProductId:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    iput v0, p0, Landroid/view/InputDevice$Builder;->mSources:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    iput v0, p0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addMotionRange(IIFFFFF)Landroid/view/InputDevice$Builder;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    new-instance v11, Landroid/view/InputDevice$MotionRange;

    const/4 v10, 0x0

    move-object v2, v11

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$MotionRange-IA;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public blacklist build()Landroid/view/InputDevice;
    .locals 36

    move-object/from16 v0, p0

    new-instance v26, Landroid/view/InputDevice;

    move-object/from16 v1, v26

    iget v2, v0, Landroid/view/InputDevice$Builder;->mId:I

    iget v3, v0, Landroid/view/InputDevice$Builder;->mGeneration:I

    iget v4, v0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    iget-object v5, v0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    iget v6, v0, Landroid/view/InputDevice$Builder;->mVendorId:I

    iget v7, v0, Landroid/view/InputDevice$Builder;->mProductId:I

    iget v8, v0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    iget-object v9, v0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    iget-boolean v10, v0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    iget v11, v0, Landroid/view/InputDevice$Builder;->mSources:I

    iget v12, v0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    iget-object v13, v0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v14, v0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    iget-object v15, v0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    move/from16 v20, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    move/from16 v21, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    move/from16 v22, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    move/from16 v23, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    move/from16 v24, v1

    const/16 v25, 0x0

    move-object/from16 v1, v27

    invoke-direct/range {v1 .. v25}, Landroid/view/InputDevice;-><init>(IIILjava/lang/String;IIILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIZLandroid/view/InputDevice-IA;)V

    move-object/from16 v1, v26

    iget-object v2, v0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    nop

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v29

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v30

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v31

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v32

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v33

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getFuzz()F

    move-result v34

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v35

    move-object/from16 v28, v1

    invoke-static/range {v28 .. v35}, Landroid/view/InputDevice;->-$$Nest$maddMotionRange(Landroid/view/InputDevice;IIFFFFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Landroid/view/InputDevice$Builder;->mShouldSmoothScroll:Z

    invoke-static {v1, v3}, Landroid/view/InputDevice;->-$$Nest$msetShouldSmoothScroll(Landroid/view/InputDevice;Z)V

    return-object v1
.end method

.method public blacklist setAssociatedDisplayId(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    return-object p0
.end method

.method public blacklist setControllerNumber(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    return-object p0
.end method

.method public blacklist setDescriptor(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDeviceBus(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    return-object p0
.end method

.method public blacklist setEnabled(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    return-object p0
.end method

.method public blacklist setExternal(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    return-object p0
.end method

.method public blacklist setGeneration(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mGeneration:I

    return-object p0
.end method

.method public blacklist setHasBattery(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    return-object p0
.end method

.method public blacklist setHasButtonUnderPad(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    return-object p0
.end method

.method public blacklist setHasMicrophone(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    return-object p0
.end method

.method public blacklist setHasSensor(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    return-object p0
.end method

.method public blacklist setHasVibrator(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    return-object p0
.end method

.method public blacklist setId(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mId:I

    return-object p0
.end method

.method public blacklist setKeyCharacterMap(Landroid/view/KeyCharacterMap;)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object p0
.end method

.method public blacklist setKeyboardLanguageTag(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setKeyboardLayoutType(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setKeyboardType(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setProductId(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mProductId:I

    return-object p0
.end method

.method public blacklist setShouldSmoothScroll(Z)Landroid/view/InputDevice$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mShouldSmoothScroll:Z

    return-object p0
.end method

.method public blacklist setSources(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mSources:I

    return-object p0
.end method

.method public blacklist setUsiVersion(Landroid/hardware/input/HostUsiVersion;)Landroid/view/InputDevice$Builder;
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/HostUsiVersion;->getMajorVersion()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/input/HostUsiVersion;->getMinorVersion()I

    move-result v0

    :cond_1
    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    return-object p0
.end method

.method public blacklist setVendorId(I)Landroid/view/InputDevice$Builder;
    .locals 0

    iput p1, p0, Landroid/view/InputDevice$Builder;->mVendorId:I

    return-object p0
.end method
