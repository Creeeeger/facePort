.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist kPreviewSizeBound:Landroid/util/Size;

.field private blacklist mCameraId:I

.field private blacklist mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHwLevel:I

.field private blacklist mIsCroppedRawSupported:Z

.field private blacklist mIsHiddenPhysicalCamera:Z

.field private blacklist mIsPreviewStabilizationSupported:Z

.field private blacklist mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public constructor blacklist <init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    iput-object p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    iput-object p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    iput-object p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    iput-boolean p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    iput-boolean p8, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    return-void
.end method

.method private blacklist createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    const/16 v0, 0x20

    if-eqz v4, :cond_3

    const/4 v7, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_1

    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x22

    goto :goto_1

    :cond_1
    iget-object v9, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v10, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v9, v10, :cond_2

    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x23

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x23

    :goto_1
    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v12, 0x0

    move-object v9, v15

    move-object v10, v8

    move v11, v7

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    nop

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v0, "MandatoryStreamCombination"

    const-string v5, "Available size enumeration failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_5

    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v10, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_e

    aget-object v13, v10, v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v5, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move v5, v0

    if-eqz v5, :cond_7

    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    goto :goto_4

    :cond_7
    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    :goto_4
    move-object/from16 v23, v0

    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    move v6, v0

    if-eqz p2, :cond_9

    if-eqz v6, :cond_9

    move/from16 v15, p2

    :cond_9
    if-eqz v5, :cond_c

    move-object/from16 v1, v23

    invoke-virtual {v1, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    nop

    invoke-virtual {v1, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v17

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v19

    if-eqz v18, :cond_a

    move-object/from16 v20, v18

    goto :goto_6

    :cond_a
    move-object/from16 v20, v19

    :goto_6
    if-eqz v18, :cond_b

    if-eqz v19, :cond_b

    move-object/from16 v21, v0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Size;

    const/16 v23, 0x0

    aput-object v18, v0, v23

    const/16 v16, 0x1

    aput-object v19, v0, v16

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v20

    move-object/from16 v0, v20

    goto :goto_7

    :cond_b
    move-object/from16 v21, v0

    const/16 v16, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    :goto_7
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v1

    move-object/from16 v25, v8

    goto :goto_8

    :cond_c
    move-object/from16 v1, v23

    const/16 v16, 0x1

    const/16 v23, 0x0

    const/16 v0, 0x20

    if-ne v15, v0, :cond_d

    move-object v14, v9

    move-object/from16 v24, v1

    move-object/from16 v25, v8

    goto :goto_8

    :cond_d
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v24, v1

    iget-object v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v25, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/List;

    :goto_8
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    move/from16 v19, v15

    move/from16 v20, v6

    move/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x20

    move-object/from16 v1, p0

    move-object/from16 v8, v25

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No available sizes found for format: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " size threshold: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " combination: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_e
    move-object/from16 v25, v8

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    const-string v0, "YUV"

    move-object v1, v0

    goto :goto_9

    :sswitch_0
    const-string v0, "JPEG"

    move-object v1, v0

    goto :goto_9

    :sswitch_1
    const-string v0, "RAW_SENSOR"

    move-object v1, v0

    :goto_9
    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " still-capture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    return-object v0

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No stream information for mandatory combination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist enumerateAvailableSizes()Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x100

    const/16 v2, 0x36

    const/16 v3, 0x20

    const/16 v4, 0x22

    const/16 v5, 0x23

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x280

    const/16 v8, 0x1e0

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Landroid/util/Size;

    const/16 v9, 0x780

    const/16 v10, 0x5a0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxRecordingSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxCameraRecordingSize()Landroid/util/Size;

    move-result-object v2

    :goto_1
    const/4 v9, 0x0

    const-string v10, "MandatoryStreamCombination"

    if-nez v2, :cond_2

    const-string v3, "Failed to find maximum recording size!"

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    array-length v12, v1

    move v13, v3

    :goto_2
    if-ge v13, v12, :cond_4

    aget v14, v1, v13

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    iget-object v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v9, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    if-nez v9, :cond_3

    new-array v9, v3, [Landroid/util/Size;

    :cond_3
    invoke-virtual {v11, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Size;

    iget-object v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    invoke-static {v4, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v17, v1

    goto/16 :goto_4

    :cond_5
    invoke-static {v4, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v5

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    array-length v12, v1

    :goto_3
    if-ge v3, v12, :cond_6

    aget v13, v1, v3

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/util/Size;

    new-instance v0, Landroid/util/Pair;

    move-object/from16 v17, v1

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v15, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    invoke-static {v15, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    invoke-static {v15, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    invoke-static {v15, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    invoke-static {v15, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_3

    :cond_6
    return-object v10

    :cond_7
    move-object/from16 v17, v1

    :goto_4
    const-string v0, "No preview sizes within preview size bound!"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    nop

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    if-eqz v3, :cond_0

    nop

    const/16 v3, 0x20

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    const/16 v3, 0x100

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "MandatoryStreamCombination"

    if-eqz v0, :cond_0

    const-string v0, "No available stream templates!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Available size enumeration failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    if-eqz v6, :cond_2

    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v0, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_3
    move-object v9, v0

    :goto_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v11, 0x23

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_4
    move-object v10, v0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v8, 0x1

    if-eq v14, v15, :cond_5

    move v14, v8

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v2, v5, :cond_6

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x22

    goto :goto_4

    :cond_6
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x23

    :goto_4
    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v5, v15, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v5, v2

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_a

    aget-object v8, v2, v15

    const/16 v16, 0x0

    move-object/from16 v17, v0

    iget v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    move-object v0, v7

    move-object v1, v0

    move-object/from16 v18, v2

    move/from16 v19, v5

    goto :goto_6

    :cond_8
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v19, v5

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_6
    iget-object v0, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move v2, v0

    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v5, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No available sizes found for format: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " size threshold: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " combination: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_a
    move-object/from16 v17, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v13, v1, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    const/4 v2, 0x0

    const/16 v5, 0x20

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_b
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez p1, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    return-object v1
.end method

.method private blacklist getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "MandatoryStreamCombination"

    if-nez v2, :cond_0

    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_7

    aget-object v8, v1, v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    const/4 v14, 0x0

    new-instance v15, Landroid/util/Pair;

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v16, v0

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v15, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v15

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz p2, :cond_2

    iget v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v14, 0x36

    if-ne v6, v14, :cond_2

    new-instance v6, Landroid/util/Pair;

    iget-object v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v0, 0x23

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v6, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v6

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v6, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v7, "The supported 10-bit YUV sizes are different from the supported 8-bit YUV sizes!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v6, v17

    :goto_2
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v14, :cond_3

    const/16 v20, 0x1

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    :goto_3
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v14, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    if-eqz p2, :cond_5

    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x100

    if-eq v15, v1, :cond_4

    const/16 v23, 0x1

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    :cond_5
    const/16 v23, 0x0

    :goto_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-direct/range {v17 .. v23}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available sizes found for format: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " size threshold: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " combination: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_6
    move/from16 v16, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No stream information for mandatory combination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_7
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMaxCameraRecordingSize()Landroid/util/Size;
    .locals 13

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "MandatoryStreamCombination"

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    iget-object v7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v8, Landroid/media/MediaRecorder;

    invoke-virtual {v7, v8, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v7

    long-to-double v9, v7

    const-wide v11, 0x417fe53d00db2f18L    # 3.344481605351171E7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External camera "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " has max video size:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support any 30fps video output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maximum preview size search failed with display size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryStreamCombination"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    return-object v0
.end method

.method private blacklist getMaxRecordingSize()Landroid/util/Size;
    .locals 5

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    :goto_0
    move v0, v1

    if-gez v0, :cond_7

    const/4 v1, 0x0

    return-object v1

    :cond_7
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static varargs blacklist getMaxSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 7

    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist is10BitOutputSupported()Z
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isColorOutputSupported()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isExternalCamera()Z
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isHardwareLevelAtLeast(I)Z
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v1, v2, v3, v4, v0}, [I

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne p1, v1, :cond_0

    return v4

    :cond_0
    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget v5, v0, v2

    if-ne v5, p1, :cond_1

    return v4

    :cond_1
    iget v6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne v5, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private blacklist isHardwareLevelAtLeastFull()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLegacy()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLevel3()Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLimited()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isPrivateReprocessingSupported()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemosaicReprocessingSupported()Z
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isYUVReprocessingSupported()Z
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAvailableMandatory10BitStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->is10BitOutputSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not able to output 10-bit!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not backward compatible, depth streams are mandatory!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v2, v0

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v3, v0

    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    invoke-direct {v0, v4, v5}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    aget-object v8, v1, v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move-object v6, v3

    goto :goto_3

    :sswitch_0
    move-object v6, v4

    goto :goto_3

    :sswitch_1
    move-object v6, v2

    nop

    :goto_3
    move-object/from16 v15, p0

    move/from16 v16, v0

    iget-object v0, v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v17, v1

    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v18, v1

    :try_start_1
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {v0, v14, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No available sizes found for format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object/from16 v15, p0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    :try_start_3
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    nop

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MandatoryStreamCombination"

    const-string v1, "Device is not backward compatible!, no mandatory maximum res streams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isRemosaicReprocessingSupported()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v4, :cond_2

    array-length v6, v4

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v5, :cond_3

    array-length v6, v5

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public blacklist getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    if-nez v1, :cond_0

    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device does not support preview stabilization"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamCombinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MandatoryStreamCombination"

    if-nez v0, :cond_0

    const-string v0, "Device is not backward compatible!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    if-gez v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Invalid camera id"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLegacy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLimited()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastFull()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLevel3()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_c
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v0, 0x13

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    nop

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "MandatoryStreamCombination"

    if-nez v3, :cond_1

    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v0, v0

    iget-boolean v7, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsCroppedRawStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v0, v7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsCroppedRawStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v7, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v7, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_4

    aget-object v14, v10, v13

    const/4 v15, 0x0

    new-instance v12, Landroid/util/Pair;

    iget-object v2, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/Integer;

    iget v1, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v12, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v12

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v12, :cond_3

    const/4 v0, 0x1

    move/from16 v20, v0

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    :goto_3
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v12, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    move-object v15, v10

    move/from16 v26, v11

    iget-wide v10, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mStreamUseCase:J

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v12

    move-wide/from16 v24, v10

    invoke-direct/range {v17 .. v25}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v10, v15

    move-object/from16 v0, v16

    move/from16 v11, v26

    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No available sizes found for format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " size threshold: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " combination: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_4
    move-object/from16 v16, v0

    :try_start_1
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
