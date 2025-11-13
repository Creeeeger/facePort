.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $domainType:I

.field public final synthetic $holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;ILcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->$domainType:I

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mStorageUsedSize:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseLongArray;

    if-eqz v3, :cond_8

    iget v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->$domainType:I

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/16 v11, 0x64

    if-eqz v3, :cond_0

    int-to-long v13, v11

    mul-long/2addr v13, v5

    div-long/2addr v13, v7

    long-to-int v3, v13

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v13, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v14, v5, v6, v13}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;->$holder:Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v14, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usedSize:Landroid/widget/TextView;

    const-string v15, " / "

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v14, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->totalSize:Landroid/widget/TextView;

    iget-object v15, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v11, v7, v8, v15}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v14, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v15

    new-instance v9, Ljava/util/Locale;

    const-string/jumbo v10, "tr"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "%%%d"

    goto :goto_1

    :cond_1
    const-string v9, "%d%%"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v10, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-virtual {v9, v1}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->updateSize(Ljava/util/ArrayList;)V

    iget-object v9, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageProgressBar:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v7, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->total:J

    iput-wide v5, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->used:J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v10}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-le v5, v8, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "get(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    iget-object v12, v11, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mSize:Ljava/lang/Long;

    move-object/from16 v16, v15

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-float v12, v14

    iget-wide v14, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->used:J

    long-to-float v14, v14

    div-float/2addr v12, v14

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v1

    const/4 v1, -0x1

    const/4 v15, 0x0

    invoke-direct {v14, v15, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v15, v16

    invoke-virtual {v15, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v11, v11, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mType:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v11}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v12

    if-eq v12, v1, :cond_3

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v11}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v17, v1

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v6, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->used:J

    long-to-float v6, v6

    iget-wide v7, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->total:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const/4 v5, 0x1

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f140407

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->storageName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v8, 0x7f1403ed

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    iget-object v9, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->totalSize:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    filled-new-array {v13, v9}, [Ljava/lang/Object;

    move-result-object v9

    const v11, 0x7f140448

    invoke-virtual {v8, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v9, v7, v1, v8}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->motionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v1, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progress:F

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-nez v1, :cond_6

    iget-object v1, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v5, 0x7f010008

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    int-to-long v5, v3

    const-wide/16 v7, 0x14

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usedSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-wide v5, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->total:J

    const-wide/16 v11, 0x0

    cmp-long v1, v5, v11

    if-eqz v1, :cond_5

    iget-wide v11, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->used:J

    const/16 v1, 0x64

    int-to-long v13, v1

    mul-long/2addr v11, v13

    div-long/2addr v11, v5

    long-to-int v15, v11

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    int-to-long v5, v15

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountVisibility(Z)V

    const/4 v0, 0x0

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountState(Ljava/lang/Integer;ZZ)V

    goto :goto_5

    :cond_7
    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->accountAddress$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->setCloudAccount(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;Landroid/widget/TextView;)V

    :cond_8
    :goto_5
    return-void
.end method
