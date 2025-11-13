.class public final Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INTERNAL_ONLY:Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda1;

.field public static final SUMMARIES_LARGER:[I

.field public static final SUMMARIES_SMALLER:[I


# instance fields
.field public final mCurrentIndex:I

.field public final mDefaultDensityForDefaultDisplay:I

.field public final mDefaultDisplayDensityEntries:[Ljava/lang/String;

.field public final mDefaultDisplayDensityValues:[I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mPredicate:Ljava/util/function/Predicate;

.field public final mValuesPerDisplay:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f142037

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const v0, 0x7f142035

    const v1, 0x7f142036

    const v2, 0x7f142038

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->INTERNAL_ONLY:Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->INTERNAL_ONLY:Lcom/android/settingslib/display/DisplayDensityUtils$$ExternalSyntheticLambda1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValuesPerDisplay:Ljava/util/Map;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iput-object v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mPredicate:Ljava/util/function/Predicate;

    const-class v1, Landroid/hardware/display/DisplayManager;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v4, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_c

    aget-object v7, v1, v6

    new-instance v8, Landroid/view/DisplayInfo;

    invoke-direct {v8}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v9

    const-string v10, "DisplayDensityUtils"

    if-nez v9, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cannot fetch display info for display "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v18, v1

    move/from16 v19, v4

    move/from16 v21, v6

    goto/16 :goto_7

    :cond_0
    iget-object v9, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mPredicate:Ljava/util/function/Predicate;

    invoke-interface {v9, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not filter out the default display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v9, v2

    :goto_2
    if-gtz v9, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cannot fetch default density for display "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v12, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int/lit16 v12, v12, 0xa0

    div-int/lit16 v12, v12, 0x140

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090005

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    int-to-float v12, v12

    int-to-float v14, v9

    div-float/2addr v12, v14

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v2, 0x7f090006

    invoke-virtual {v13, v2, v15, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v5, 0x7f090007

    invoke-virtual {v13, v5, v15, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    div-float v15, v12, v5

    const/4 v13, 0x3

    int-to-float v13, v13

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v13

    float-to-int v13, v13

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v2, v15, v2

    div-float v5, v2, v5

    const/4 v15, 0x1

    int-to-float v3, v15

    invoke-static {v5, v1, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v13

    new-array v5, v3, [Ljava/lang/String;

    new-array v15, v3, [I

    move/from16 v19, v4

    if-lez v1, :cond_6

    int-to-float v4, v1

    div-float/2addr v2, v4

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    const/16 v20, -0x1

    :goto_3
    if-ltz v1, :cond_5

    move/from16 v21, v6

    add-int/lit8 v6, v1, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v6, v17, v6

    mul-float/2addr v6, v14

    float-to-int v6, v6

    and-int/lit8 v6, v6, -0x2

    if-ne v11, v6, :cond_4

    move/from16 v20, v4

    :cond_4
    sget-object v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    move/from16 v23, v2

    aget v2, v22, v1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    aput v6, v15, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v6, v21

    move/from16 v2, v23

    goto :goto_3

    :cond_5
    move/from16 v21, v6

    goto :goto_4

    :cond_6
    move/from16 v21, v6

    const/4 v4, 0x0

    const/16 v20, -0x1

    :goto_4
    if-ne v11, v9, :cond_7

    move/from16 v20, v4

    :cond_7
    aput v9, v15, v4

    const v1, 0x7f142034

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x1

    add-int/2addr v4, v1

    if-lez v13, :cond_9

    int-to-float v1, v13

    div-float/2addr v12, v1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_9

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    mul-float/2addr v6, v12

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v6, v6, v16

    mul-float/2addr v6, v14

    float-to-int v6, v6

    and-int/lit8 v6, v6, -0x2

    if-ne v11, v6, :cond_8

    move/from16 v20, v4

    :cond_8
    aput v6, v15, v4

    sget-object v6, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v1, v6, v1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    move v1, v2

    goto :goto_5

    :cond_9
    if-ltz v20, :cond_a

    move/from16 v4, v20

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    aput v11, v15, v4

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142033

    invoke-virtual {v10, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    :goto_6
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_b

    iput v9, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    iput v4, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iput-object v5, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityEntries:[Ljava/lang/String;

    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    :cond_b
    iget-object v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValuesPerDisplay:Ljava/util/Map;

    iget-object v2, v8, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v3, p1

    move-object/from16 v1, v18

    move/from16 v4, v19

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
