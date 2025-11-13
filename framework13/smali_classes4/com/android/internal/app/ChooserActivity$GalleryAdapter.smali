.class public Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist resolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 14208
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 14206
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->resolver:Landroid/content/ContentResolver;

    .line 14209
    new-instance v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/os/Handler;Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p1, Lcom/android/internal/app/ChooserActivity;->mGalleryObserver:Landroid/database/ContentObserver;

    .line 14218
    return-void
.end method

.method private blacklist handleEnhancementBtnClicked(IILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V
    .locals 26
    .param p1, "type"    # I
    .param p2, "position"    # I
    .param p3, "galleryViewHolder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14514
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14515
    .local v11, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    if-nez v11, :cond_0

    .line 14516
    return-void

    .line 14518
    :cond_0
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsEnhancedImageProcessing(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsEnhanceButtonAnimRunning(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_14

    .line 14521
    :cond_1
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 14522
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    .line 14524
    :cond_2
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v12, 0x1

    invoke-static {v0, v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14525
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14526
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedSmartShareTip(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14527
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "chooser_smartshare_tip"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14528
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedSmartShareTip(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14530
    :cond_3
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 14531
    .local v13, "curItemView":Landroid/view/View;
    const-string v14, "GalleryShareSheet"

    if-nez v13, :cond_4

    .line 14532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch itemview at current position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14533
    return-void

    .line 14535
    :cond_4
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    iget-object v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v2, v2, v8

    xor-int/2addr v2, v12

    aput-boolean v2, v0, v8

    .line 14537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 14538
    .local v15, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/samsung/android/share/SemShareConstants;->DMA_SURVEY_FEATURE_SMART_SHARE_EFFECTS:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-string v2, "Effect"

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14540
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    iget-object v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_5

    .line 14541
    const-string v2, "SS_TGON"

    goto :goto_0

    .line 14542
    :cond_5
    const-string v2, "SS_TGOF"

    .line 14540
    :goto_0
    invoke-virtual {v0, v2, v15}, Lcom/samsung/android/share/SemShareLogging;->insertLogWithDimension(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 14543
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_6

    .line 14544
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->viewedEnhancementCount:[I

    aget v2, v0, v8

    add-int/2addr v2, v12

    aput v2, v0, v8

    .line 14546
    :cond_6
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-virtual {v10, v0}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    .line 14547
    const/4 v0, 0x0

    .line 14548
    .local v0, "enabledCount":I
    const/4 v2, 0x0

    move v6, v0

    .end local v0    # "enabledCount":I
    .local v2, "i":I
    .local v6, "enabledCount":I
    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_8

    .line 14549
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 14548
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14552
    .end local v2    # "i":I
    :cond_8
    if-nez v6, :cond_1c

    .line 14554
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSrcToEnhanceImageUris(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14555
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14556
    const/4 v2, 0x0

    .line 14557
    .local v2, "skippedAnimation":Z
    if-ne v8, v12, :cond_14

    .line 14558
    iget-object v5, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 14559
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 14560
    const/16 v16, 0x0

    .line 14561
    .local v16, "heightOffset":I
    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableWidth:I

    .line 14562
    .local v12, "currImgWidth":I
    iget-object v4, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v4, v11, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetViewWidthForCurrentOrientation(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;Landroid/widget/ImageView;)I

    move-result v0

    .line 14563
    .local v0, "viewWidth":I
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableHeight:I

    int-to-float v1, v1

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v1, v1, v19

    div-float/2addr v4, v1

    iput v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    .line 14564
    int-to-float v1, v12

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 14565
    .local v1, "viewTotalWidth":I
    int-to-float v4, v1

    int-to-float v3, v0

    mul-float v3, v3, v19

    div-float/2addr v4, v3

    iput v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    .line 14566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.scaleTypeRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info.heightscalefactor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " viewTotalWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14567
    iget-object v3, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->semIsDeviceInLandscape()Z

    move-result v3

    const-string v4, " matrixScaleFactor: "

    move/from16 v21, v2

    .end local v2    # "skippedAnimation":Z
    .local v21, "skippedAnimation":Z
    const-string v2, " height: "

    move/from16 v22, v12

    .end local v12    # "currImgWidth":I
    .local v22, "currImgWidth":I
    const/16 v12, 0x9

    if-eqz v3, :cond_d

    .line 14568
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    if-nez v3, :cond_c

    .line 14569
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    if-eqz v3, :cond_b

    .line 14570
    new-array v3, v12, [F

    .line 14571
    .local v3, "f":[F
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14572
    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    if-nez v12, :cond_9

    .line 14573
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v23, v15

    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v23, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    div-float/2addr v12, v15

    float-to-int v12, v12

    .line 14574
    .local v12, "viewScaledHeight":I
    iget-object v15, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    sub-int/2addr v15, v12

    const/16 v20, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    goto :goto_2

    .line 14572
    .end local v12    # "viewScaledHeight":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v23, v15

    .line 14576
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    .line 14577
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v19

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightPortrait:I

    int-to-float v15, v15

    div-float/2addr v12, v15

    .line 14578
    .local v12, "matrixScaleFactor":F
    iget-object v15, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v15

    const/16 v19, 0x5

    if-le v1, v15, :cond_a

    .line 14579
    iget-object v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    move/from16 v24, v6

    const/16 v18, 0x0

    .end local v6    # "enabledCount":I
    .local v24, "enabledCount":I
    aget v6, v3, v18

    move-object/from16 v25, v13

    const/16 v17, 0x4

    .end local v13    # "curItemView":Landroid/view/View;
    .local v25, "curItemView":Landroid/view/View;
    aget v13, v3, v17

    invoke-virtual {v15, v6, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14580
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    aget v13, v3, v19

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 14582
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    :cond_a
    move/from16 v24, v6

    move-object/from16 v25, v13

    const/16 v18, 0x0

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    aget v13, v3, v18

    mul-float/2addr v13, v12

    const/4 v15, 0x4

    aget v15, v3, v15

    mul-float/2addr v15, v12

    invoke-virtual {v6, v13, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14583
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    mul-float/2addr v15, v12

    aget v13, v3, v19

    mul-float/2addr v13, v12

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14585
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Reverse potrait backup Matrix: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " info.heightOffsetLandscape: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14586
    .end local v3    # "f":[F
    .end local v12    # "matrixScaleFactor":F
    goto :goto_4

    .line 14587
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    const/4 v2, 0x1

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    goto :goto_5

    .line 14568
    .end local v2    # "skippedAnimation":Z
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "skippedAnimation":Z
    :cond_c
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .line 14590
    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    :goto_4
    move/from16 v2, v21

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    :goto_5
    iget v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    .line 14591
    .end local v16    # "heightOffset":I
    .local v3, "heightOffset":I
    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/16 :goto_9

    .line 14593
    .end local v2    # "skippedAnimation":Z
    .end local v3    # "heightOffset":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "heightOffset":I
    .restart local v21    # "skippedAnimation":Z
    :cond_d
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    if-nez v3, :cond_11

    .line 14594
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    if-eqz v3, :cond_10

    .line 14595
    new-array v3, v12, [F

    .line 14596
    .local v3, "f":[F
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14597
    iget v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    if-nez v6, :cond_e

    .line 14598
    iget-object v6, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    div-float/2addr v6, v12

    float-to-int v6, v6

    .line 14599
    .local v6, "viewScaledHeight":I
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v6

    const/4 v13, 0x2

    div-int/2addr v12, v13

    iput v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    .line 14601
    .end local v6    # "viewScaledHeight":I
    :cond_e
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    .line 14602
    iget-object v6, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v19

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightLand:I

    int-to-float v12, v12

    div-float/2addr v6, v12

    .line 14603
    .local v6, "matrixScaleFactor":F
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v12

    if-le v1, v12, :cond_f

    .line 14604
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    aget v15, v3, v13

    const/4 v13, 0x4

    aget v13, v3, v13

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14605
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    int-to-float v13, v13

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    .line 14607
    :cond_f
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    aget v15, v3, v13

    mul-float/2addr v15, v6

    const/4 v13, 0x4

    aget v13, v3, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14608
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    mul-float/2addr v15, v6

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14610
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reverse land backup Matrix: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " info.heightOffsetPortrait: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " info.viewHeightLand: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightLand:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14611
    .end local v3    # "f":[F
    .end local v6    # "matrixScaleFactor":F
    goto :goto_7

    .line 14612
    :cond_10
    const/4 v2, 0x1

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    goto :goto_8

    .line 14615
    .end local v2    # "skippedAnimation":Z
    .restart local v21    # "skippedAnimation":Z
    :cond_11
    :goto_7
    move/from16 v2, v21

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    :goto_8
    iget v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    .line 14616
    .end local v16    # "heightOffset":I
    .local v3, "heightOffset":I
    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14618
    :goto_9
    if-nez v2, :cond_13

    .line 14619
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14620
    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scale:F

    .line 14621
    .local v4, "scaleFactor":F
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->cropPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v6, v12

    mul-float/2addr v6, v4

    .line 14622
    .local v6, "dx":F
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->cropPos:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v4

    .line 14624
    .local v12, "dy":F
    int-to-float v13, v0

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v13, v15

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v13, v15

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->widthRatio:F

    div-float/2addr v13, v15

    float-to-int v13, v13

    .line 14625
    .local v13, "updatedWidth":I
    const/4 v15, 0x0

    .line 14626
    .local v15, "widthOffset":F
    move/from16 v16, v0

    .end local v0    # "viewWidth":I
    .local v16, "viewWidth":I
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    if-le v13, v0, :cond_12

    .line 14627
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    sub-int v0, v13, v0

    int-to-float v0, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v0, v17

    .line 14630
    :cond_12
    iget v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    move/from16 v17, v1

    .end local v1    # "viewTotalWidth":I
    .local v17, "viewTotalWidth":I
    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v0, v1

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    move/from16 v19, v2

    .end local v2    # "skippedAnimation":Z
    .local v19, "skippedAnimation":Z
    iget v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 14631
    iget v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v0, v6

    neg-float v0, v0

    sub-float/2addr v0, v15

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v12

    neg-float v1, v1

    int-to-float v2, v3

    move/from16 v21, v4

    .end local v4    # "scaleFactor":F
    .local v21, "scaleFactor":F
    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v2, v4

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " crop reapply cropHeightRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " translate x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v6

    add-float/2addr v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " translate y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v12

    int-to-float v2, v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v2, v4

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14638
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_a

    .line 14618
    .end local v6    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "updatedWidth":I
    .end local v15    # "widthOffset":F
    .end local v16    # "viewWidth":I
    .end local v17    # "viewTotalWidth":I
    .end local v19    # "skippedAnimation":Z
    .end local v21    # "scaleFactor":F
    .restart local v0    # "viewWidth":I
    .restart local v1    # "viewTotalWidth":I
    .restart local v2    # "skippedAnimation":Z
    :cond_13
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v2

    .line 14641
    .end local v0    # "viewWidth":I
    .end local v1    # "viewTotalWidth":I
    .end local v2    # "skippedAnimation":Z
    .end local v3    # "heightOffset":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v22    # "currImgWidth":I
    .restart local v19    # "skippedAnimation":Z
    :goto_a
    move/from16 v2, v19

    goto :goto_b

    .line 14557
    .end local v19    # "skippedAnimation":Z
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v2    # "skippedAnimation":Z
    .local v6, "enabledCount":I
    .local v13, "curItemView":Landroid/view/View;
    .local v15, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    move/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .line 14641
    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    :goto_b
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v0, :cond_15

    .line 14642
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    goto :goto_c

    .line 14644
    :cond_15
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mconvertGalleryInfo(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14646
    :goto_c
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    .line 14647
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    const/4 v3, 0x3

    if-eq v8, v3, :cond_16

    if-nez v1, :cond_16

    .line 14648
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v4, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_d

    .line 14649
    :cond_16
    if-eq v8, v3, :cond_17

    .line 14650
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14652
    :cond_17
    :goto_d
    const/4 v4, 0x0

    .line 14654
    .local v4, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_18

    .line 14655
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    .line 14656
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 14658
    :catch_0
    move-exception v0

    .line 14659
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not fetch bitmap from icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 14660
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_18
    :goto_e
    nop

    .line 14661
    :goto_f
    const/4 v5, 0x1

    if-ne v8, v5, :cond_19

    if-nez v2, :cond_19

    .line 14662
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_10

    .line 14663
    :cond_19
    if-ne v8, v3, :cond_1a

    .line 14664
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_10

    .line 14665
    :cond_1a
    const/4 v3, 0x2

    if-ne v8, v3, :cond_1b

    .line 14666
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyReverseTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_10

    .line 14668
    :cond_1b
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14670
    :goto_10
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14671
    iput v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 14672
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v12, v25

    .end local v25    # "curItemView":Landroid/view/View;
    .local v12, "curItemView":Landroid/view/View;
    invoke-static {v0, v12, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mupdateImageWidth(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 14673
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    .end local v2    # "skippedAnimation":Z
    .end local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    move/from16 v15, v24

    goto/16 :goto_13

    .line 14674
    .end local v12    # "curItemView":Landroid/view/View;
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1c
    move/from16 v24, v6

    move-object v12, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "curItemView":Landroid/view/View;
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    const/4 v1, 0x1

    .end local v24    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    if-ne v6, v1, :cond_1d

    move v0, v8

    goto :goto_11

    :cond_1d
    const/16 v0, 0xa

    .line 14676
    .local v0, "updatedType":I
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying deepsky position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14677
    const/4 v1, 0x0

    .line 14678
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 14679
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    iget-object v5, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-static {v3, v4, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetKeyForCache(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;[Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/share/SemShareImageFetcher;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v13, v1

    goto :goto_12

    .line 14678
    :cond_1e
    move-object v13, v1

    .line 14681
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    :goto_12
    if-eqz v13, :cond_1f

    iget-object v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1f

    .line 14682
    iput-object v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    .line 14683
    iget-object v2, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, p2

    move v15, v6

    .end local v6    # "enabledCount":I
    .local v15, "enabledCount":I
    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->updateImageFromCache(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;II)V

    .line 14684
    iput v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 14685
    iget-object v1, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected enhancement from cache for type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 14681
    .end local v15    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    :cond_1f
    move v15, v6

    .line 14688
    .end local v6    # "enabledCount":I
    .restart local v15    # "enabledCount":I
    iget-object v1, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14689
    iget-object v1, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, 0x1

    if-eq v15, v3, :cond_20

    move v2, v3

    :cond_20
    invoke-virtual {v1, v2, v9, v8}, Lcom/android/internal/app/ChooserActivity;->requestEnhancedImage(ZII)V

    .line 14692
    .end local v0    # "updatedType":I
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View clicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14693
    return-void

    .line 14519
    .end local v12    # "curItemView":Landroid/view/View;
    .end local v15    # "enabledCount":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_21
    :goto_14
    return-void
.end method

.method private blacklist initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14487
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14488
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 14489
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14490
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 14491
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 14492
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mclearEnhanceIconVisibility(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V

    .line 14493
    new-array v3, v4, [Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    goto :goto_0

    .line 14495
    :cond_0
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14496
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14497
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    invoke-static {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->-$$Nest$mupdateEnhancementButtonVisibility(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;[Z)V

    .line 14499
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    .line 14500
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemLogForSmartShareOpen(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;)V

    .line 14502
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 14503
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 14505
    :cond_1
    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14507
    :goto_1
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14508
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050364

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14509
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14511
    .end local v0    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    return-void
.end method

.method private blacklist updateImageFromCache(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "curItemView"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "position"    # I
    .param p5, "type"    # I

    .line 14427
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14428
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 14429
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_0

    .line 14430
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14432
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14434
    :cond_1
    const/4 v1, 0x3

    if-ne p5, v1, :cond_3

    .line 14435
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    .line 14436
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14438
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14440
    :cond_3
    const/4 v1, 0x2

    if-ne p5, v1, :cond_5

    .line 14441
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_4

    .line 14442
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14444
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyReverseTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14447
    :cond_5
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14448
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14450
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14451
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14452
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p2, p4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mupdateImageWidth(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 14453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected enhancement from cache for multi type bitmap:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryShareSheet"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14454
    return-void
.end method


# virtual methods
.method blacklist bindIntentItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 14458
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14460
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mconvertGalleryInfo(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14462
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14463
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    .line 14464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 14467
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14468
    .local v0, "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 14469
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 14470
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 14471
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 14472
    :cond_2
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 14473
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 14475
    :cond_3
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 14465
    .end local v0    # "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14479
    :goto_1
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14480
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14481
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14482
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14483
    return-void
.end method

.method blacklist bindSliceItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 14263
    const-string v0, ""

    .line 14265
    .local v0, "viewholderDescription":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14267
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 14287
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 14303
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14304
    .local v1, "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 14305
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 14306
    :cond_2
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 14307
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 14308
    :cond_3
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 14309
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 14311
    :cond_4
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 14289
    .end local v1    # "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_7

    .line 14290
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v1, v5, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    .line 14291
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_6

    .line 14292
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14293
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->registerObserver(Landroid/net/Uri;I)V

    goto/16 :goto_2

    .line 14295
    :cond_6
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14296
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    goto/16 :goto_2

    .line 14299
    :cond_7
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14300
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    goto/16 :goto_2

    .line 14269
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v1, v5, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    .line 14271
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 14272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder: mGalleryImageInfoHash["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = null, skip draw a preview image!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14273
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14274
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14275
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14276
    return-void

    .line 14279
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_a

    .line 14280
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14281
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->registerObserver(Landroid/net/Uri;I)V

    goto :goto_2

    .line 14283
    :cond_a
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14284
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    .line 14316
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14317
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->dateTime:Ljava/lang/String;

    .line 14320
    :cond_b
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLeftViewAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmRightViewAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 14321
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity;->mScrolltoPosition:I

    if-ge p1, v1, :cond_e

    .line 14322
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-le v1, p1, :cond_d

    .line 14323
    :cond_c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14325
    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsBindedLowPosition(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_3

    .line 14326
    :cond_e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity;->mScrolltoPosition:I

    if-le p1, v1, :cond_11

    .line 14327
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-ge v1, p1, :cond_10

    .line 14328
    :cond_f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14330
    :cond_10
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsBindedHighPosition(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14332
    :cond_11
    :goto_3
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 14333
    :cond_12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDrawerAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 14334
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 14336
    :cond_13
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 14339
    :goto_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 14340
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14341
    .local v1, "ischecked":Z
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14342
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    instance-of v8, v8, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    if-eqz v8, :cond_14

    .line 14343
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    check-cast v8, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->semSetChecked(Z)V

    .line 14345
    :cond_14
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 14346
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    .line 14347
    .local v5, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShouldSkipAnim(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 14348
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_5

    .line 14350
    :cond_15
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 14352
    :goto_5
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 14353
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14355
    .end local v1    # "ischecked":Z
    .end local v5    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_16
    goto :goto_6

    .line 14356
    :cond_17
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14359
    :goto_6
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isFavourite:Z

    const-string v5, ", "

    if-ne v1, v7, :cond_18

    .line 14360
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080bbb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14361
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 14362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c84

    invoke-virtual {v4, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 14365
    :cond_18
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14368
    :cond_19
    :goto_7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_1b

    .line 14369
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    if-ne v1, v4, :cond_1a

    .line 14370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c86

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 14372
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c85

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14376
    :cond_1b
    :goto_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    const v5, 0x10808a8

    if-ne v1, v7, :cond_1c

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_1c

    .line 14378
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14379
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14380
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14381
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14382
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_a

    .line 14383
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1d

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_1d

    .line 14385
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14386
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14387
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14388
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14389
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_a

    .line 14390
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    if-ne v1, v4, :cond_1e

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_1e

    .line 14392
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14393
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14394
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14395
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14396
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_a

    .line 14397
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    if-ne v1, v4, :cond_1f

    .line 14398
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14399
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14400
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14401
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 14402
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_a

    .line 14403
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    const/16 v4, 0xa30

    if-ne v1, v4, :cond_21

    .line 14404
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14405
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14406
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    if-eqz v1, :cond_20

    .line 14407
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 14409
    :cond_20
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14411
    :goto_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14412
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto :goto_a

    .line 14414
    :cond_21
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14417
    :goto_a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 14418
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14420
    :cond_22
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14421
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14422
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14423
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14424
    return-void
.end method

.method public blacklist getItemCount()I
    .locals 1

    .line 14697
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 14698
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 14700
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGallerySliceUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$onBindViewHolder$0$com-android-internal-app-ChooserActivity$GalleryAdapter(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "galleryViewHolder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "clickedView"    # Landroid/view/View;

    .line 14249
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14250
    .local v0, "type":I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->handleEnhancementBtnClicked(IILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14251
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 14234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryShareSheet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14237
    instance-of v0, p1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    if-eqz v0, :cond_3

    .line 14238
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14239
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14240
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14242
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    .line 14243
    .local v1, "iv":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 14244
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14247
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14248
    .local v2, "galleryViewHolder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    new-instance v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14253
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 14254
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->bindSliceItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 14256
    :cond_2
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->bindIntentItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V

    .line 14260
    .end local v0    # "height":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "galleryViewHolder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 14227
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109015a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 14228
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V

    .line 14229
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    return-object v1
.end method

.method public blacklist registerObserver(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # I

    .line 14221
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mGalleryObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryShareSheet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14223
    return-void
.end method
