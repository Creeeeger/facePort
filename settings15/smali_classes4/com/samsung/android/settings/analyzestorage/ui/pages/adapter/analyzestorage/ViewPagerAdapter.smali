.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activity:Landroidx/fragment/app/FragmentActivity;

.field public final appearAnimator:Landroid/animation/ValueAnimator;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

.field public final disappearAnimator:Landroid/animation/ValueAnimator;

.field public final holderArray:Landroid/util/SparseArray;

.field public isLandScape:Z

.field public isShowMoreItem:Z

.field public final progressAnimator:Landroid/animation/ValueAnimator;

.field public final showMoreItemCount:I

.field public storageList:Ljava/util/List;

.field public final usageDetailHeight:[I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->usageDetailHeight:[I

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->showMoreItemCount:I

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->progressAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p1, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static setCloudAccount(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v0, :cond_2

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->accountId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getMinHeight(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->showMoreItemCount:I

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->usageDetailHeight:[I

    aget p0, p0, p1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object/from16 v4, p1

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    move/from16 v6, p2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    iget-object v7, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const-string v14, "context"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->getUsageInfoList(I)Ljava/util/List;

    move-result-object v15

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v6, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->storageName:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_2

    const/16 v8, 0x65

    if-eq v5, v8, :cond_1

    const/16 v8, 0x66

    if-ne v5, v8, :cond_0

    const v8, 0x7f14041f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no user friendly name for : "

    invoke-static {v5, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v8, 0x7f140405

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalStorageRoot:Ljava/lang/String;

    const v8, 0x7f1403e4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const v8, 0x7f14043a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    sget-object v8, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->sInternalStorageRoot:Ljava/lang/String;

    const v8, 0x7f140409

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v10, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ConfigurationUtils;->isInRTLMode(Landroid/content/Context;)Z

    move-result v12

    iget-boolean v13, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    iget-object v11, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object v6, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iget-object v7, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v8, v15

    move v9, v5

    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setInitItem(Landroidx/lifecycle/LifecycleOwner;Ljava/util/List;IZLcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;ZZ)V

    iget-object v6, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageProgressBar:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setInitItem$1;

    invoke-direct {v7, v6}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setInitItem$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    new-instance v10, Landroid/view/View;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v8, v6, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->getInnerProgress()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;

    invoke-direct {v8, v6}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$2;

    invoke-direct {v8, v6}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar$setAnimator$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v5, :cond_7

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v6

    const-wide/32 v10, 0x3b9aca00

    cmp-long v6, v6, v10

    if-gez v6, :cond_7

    iget-object v6, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v8, 0x7f060041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v6, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->getUsageDetailData(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;

    invoke-direct {v7, v0, v5, v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$bindDataObserver$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;ILcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    iget-object v8, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v6, v8, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v6

    iget-object v7, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->accountAddress$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->setCloudAccount(Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;Landroid/widget/TextView;)V

    :cond_8
    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v6

    iget-object v7, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountButton$delegate:Lkotlin/Lazy;

    iget-object v8, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->moreOptionIcon$delegate:Lkotlin/Lazy;

    const-string v10, "getString(...)"

    const-string v12, "getContext(...)"

    if-eqz v6, :cond_b

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v6

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_9
    const v9, 0x3f19999a    # 0.6f

    :goto_2
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v6, :cond_a

    move v9, v1

    goto :goto_3

    :cond_a
    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;

    invoke-direct {v9, v3, v15}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f140416

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v11, Landroid/widget/Button;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v15, v11}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    new-instance v11, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setMoreOption$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    xor-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountVisibility(Z)V

    :cond_b
    sget-object v6, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    iget-object v9, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->getUsageInfoList(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v11, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-static {v11}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-static {v11}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget-object v13, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v1, 0x7f0700ba

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v13, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v3, 0x7f0700dd

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v13, 0x7f0700dc

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v9, v15

    div-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->usageDetailHeight:[I

    const/16 v16, 0x1

    aput v13, v2, v16

    add-int/2addr v9, v1

    const/4 v13, 0x0

    aput v9, v2, v13

    iget v9, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->showMoreItemCount:I

    add-int/lit8 v13, v9, 0x1

    move-object/from16 v18, v12

    const/4 v12, 0x4

    mul-int/2addr v15, v12

    const/16 v17, 0x2

    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v1

    aput v17, v2, v13

    add-int/2addr v15, v1

    aput v15, v2, v9

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_c

    const/4 v1, 0x1

    aget v9, v2, v1

    add-int/2addr v9, v3

    aput v9, v2, v1

    aget v1, v2, v6

    add-int/2addr v1, v3

    aput v1, v2, v6

    :cond_c
    iget-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->getMinHeight(Z)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/GridLayout;->setMinimumHeight(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateLayout(Ljava/lang/Integer;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->storageName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usedSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->totalSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->divider$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountSubTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_d
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0801bc

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountButtonText$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v1

    iget-object v2, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMoreContainer$delegate:Lkotlin/Lazy;

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sIsSdcardMounted:Z

    if-nez v1, :cond_f

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :cond_f
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    iget-boolean v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v3, :cond_10

    const v3, 0x7f14043d

    goto :goto_5

    :cond_10
    const v3, 0x7f14043e

    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v3

    const-class v6, Landroid/widget/Button;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_12

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v6, v18

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f0801e4

    goto :goto_6

    :cond_11
    const v3, 0x7f0801e5

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f060069

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setExpandCollapseAnimator$1;

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setExpandCollapseAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setAppearAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    if-eqz v0, :cond_13

    move v9, v7

    goto :goto_7

    :cond_13
    move v9, v5

    :goto_7
    iget-object v0, v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->motionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0078

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setLayoutState(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->motionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->updateColumnCount(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final updateLayout(Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->getMinHeight(Z)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setMinimumHeight(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->summaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const v2, 0x7f070170

    :goto_0
    invoke-static {v1, v2, v3, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->updatePadding(Landroid/view/View;III)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageRateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0700cd

    goto :goto_1

    :cond_2
    const p1, 0x7f0700d0

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    const v4, 0x7f0700ff

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {v1, p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->updatePadding(Landroid/view/View;III)V

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->progressContainer:Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isLandScape:Z

    const v0, 0x7f0700ce

    if-eqz p0, :cond_4

    const v1, 0x7f070100

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    const p0, 0x7f07016f

    invoke-static {p1, v1, p0, v4}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->updatePadding(Landroid/view/View;III)V

    :cond_6
    return-void
.end method

.method public final updateMountState(Ljava/lang/Integer;ZZ)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountSubTitle$delegate:Lkotlin/Lazy;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-nez p1, :cond_1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountButton$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->moreOptionIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final updateMountVisibility(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageRateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->progressContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->getShowMore()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->divider$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
