.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appearAnimator:Landroid/animation/ValueAnimator;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

.field public final disappearAnimator:Landroid/animation/ValueAnimator;

.field public final holderArray:Landroid/util/SparseArray;

.field public isDuringAnimation:Z

.field public isLandScape:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getBaseContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    const/4 p1, 0x2

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-string/jumbo v2, "setDuration(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

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
.end method

.method public static initButtonShape(ILandroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801ca

    goto :goto_0

    :cond_0
    const v0, 0x7f0801ce

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/16 v2, 0xb2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f060053

    goto :goto_2

    :cond_2
    const v2, 0x7f0601d9

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const v0, 0x3f333333    # 0.7f

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, p0, v0, p0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p1

    check-cast v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v10, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBindViewHolder() - recommendCardType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsRecommendCardViewPagerAdapter"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_3

    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileTypeCard:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eqz v10, :cond_5

    iget-object v0, v10, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v13, v0

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, ""

    goto :goto_1

    :goto_3
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    iget-object v1, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->getAsRecommendCardInfo(ILcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;)Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardMainContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x7

    const/16 v4, 0x8

    if-ne v11, v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardMainTitle:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v5, 0x7f140438

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCard:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    iget-object v5, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v1, :cond_8

    iget-object v3, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    const-class v5, Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    iget-object v3, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :goto_6
    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardSubList:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    const/4 v15, 0x0

    const-string v3, "getString(...)"

    if-eqz v0, :cond_20

    const/4 v6, 0x6

    const/4 v14, 0x5

    if-eq v11, v14, :cond_14

    if-eq v11, v6, :cond_b

    goto/16 :goto_1a

    :cond_b
    iget-object v4, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v5, 0x0

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v19, v5, 0x1

    if-ltz v5, :cond_13

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v14, 0x7f0d006c

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    iget-boolean v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isLandScape:Z

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x7f070112

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    move-object/from16 v20, v10

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v14, v15, v10, v0, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_8

    :cond_c
    move-object/from16 v20, v10

    :goto_8
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "packageName"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x5

    if-eq v11, v8, :cond_e

    const/4 v8, 0x6

    if-eq v11, v8, :cond_d

    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    const v8, 0x7f0a0f27

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_9
    move-object v8, v0

    goto :goto_a

    :cond_e
    const v8, 0x7f0a0f2a

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_9

    :goto_a
    if-eqz v8, :cond_f

    :try_start_0
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v10, "getApplicationIcon(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "iniIcon()] exception: "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0801bf

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_b
    const/4 v8, 0x5

    if-eq v11, v8, :cond_11

    const/4 v8, 0x6

    if-eq v11, v8, :cond_10

    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    const v8, 0x7f0a0f28

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_c
    move-object v8, v0

    goto :goto_d

    :cond_11
    const v8, 0x7f0a0f2b

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_c

    :goto_d
    if-eqz v8, :cond_12

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v4, v6, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "initName()] exception: "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v10, 0x7f060061

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v8, Landroid/widget/Button;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v14, v8}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "initAppList()] exception: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;

    invoke-direct {v0, v7, v6, v5, v11}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v8, p2

    move/from16 v5, v19

    move-object/from16 v10, v20

    const/4 v6, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v1, 0x0

    throw v1

    :cond_14
    move-object/from16 v20, v10

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "cloudType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_3
    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_11

    :catch_3
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->NONE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    :goto_11
    iget-object v4, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d006d

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-ne v2, v5, :cond_15

    const v5, 0x7f140434

    const v6, 0x7f0801cb

    :goto_12
    const/4 v10, 0x5

    goto :goto_13

    :cond_15
    const v5, 0x7f140436

    const v6, 0x7f0801cc

    goto :goto_12

    :goto_13
    if-eq v11, v10, :cond_17

    const/4 v10, 0x6

    if-eq v11, v10, :cond_16

    move-object v15, v8

    const v10, 0x7f0a0f27

    :goto_14
    const v14, 0x7f0a0f2a

    goto :goto_15

    :cond_16
    const v10, 0x7f0a0f27

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object v15, v14

    goto :goto_14

    :cond_17
    const v10, 0x7f0a0f27

    const v14, 0x7f0a0f2a

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    :goto_15
    if-eqz v15, :cond_18

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    const/4 v6, 0x5

    if-eq v11, v6, :cond_1a

    const/4 v6, 0x6

    if-eq v11, v6, :cond_19

    move-object v6, v8

    goto :goto_16

    :cond_19
    const v6, 0x7f0a0f28

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Landroid/widget/TextView;

    goto :goto_16

    :cond_1a
    const v6, 0x7f0a0f2b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Landroid/widget/TextView;

    :goto_16
    if-nez v6, :cond_1b

    goto :goto_17

    :cond_1b
    iget-object v15, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v15, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_17
    iget-object v6, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1f

    const/4 v6, 0x5

    if-eq v11, v6, :cond_1d

    const/4 v15, 0x6

    if-eq v11, v15, :cond_1c

    move-object v6, v8

    goto :goto_18

    :cond_1c
    const v6, 0x7f0a0f28

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v6, v17

    goto :goto_18

    :cond_1d
    const v6, 0x7f0a0f2b

    const/4 v15, 0x6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v6, v16

    :goto_18
    if-eqz v6, :cond_1e

    iget-object v8, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v10, 0x7f060061

    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_19

    :cond_1e
    const v10, 0x7f060061

    goto :goto_19

    :cond_1f
    const v10, 0x7f060061

    const/4 v15, 0x6

    :goto_19
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Landroid/widget/Button;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;

    invoke-direct {v5, v7, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_10

    :cond_20
    :goto_1a
    move-object/from16 v20, v10

    :cond_21
    const v10, 0x7f060061

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const v1, 0x7f140432

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowRecommendCardButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowRecommendCardButton:Landroid/widget/TextView;

    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowButtonContainer:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;

    const/4 v6, 0x2

    move-object v1, v8

    move v2, v11

    move-object v3, v13

    move v4, v12

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;-><init>(ILjava/lang/String;ILcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;I)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v9, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->appearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v9, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$setAppearAnimator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmButtonContainer:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;

    const/4 v6, 0x1

    move-object v1, v8

    move v2, v11

    move-object v3, v13

    move v4, v12

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;-><init>(ILjava/lang/String;ILcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;I)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowRecommendCardButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCard:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardMainTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_22
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v20, :cond_23

    move-object/from16 v3, v20

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_1b

    :cond_23
    const/4 v15, 0x0

    :goto_1b
    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140407

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCard:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->updateLayout(Ljava/lang/Integer;)V

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowRecommendCardButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->initButtonShape(ILandroid/widget/TextView;)V

    iget-object v1, v9, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->initButtonShape(ILandroid/widget/TextView;)V

    :cond_24
    iget-boolean v0, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isDuringAnimation:Z

    if-eqz v0, :cond_25

    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_25
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d006e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a08c2

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "requireViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0a98

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowRecommendCardButton:Landroid/widget/TextView;

    const p1, 0x7f0a04dd

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCard:Landroid/widget/TextView;

    const p1, 0x7f0a03e5

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmRecommendCardButton:Landroid/widget/TextView;

    const p1, 0x7f0a0f2e

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardSubList:Lcom/google/android/flexbox/FlexboxLayout;

    const p1, 0x7f0a0925

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardMainTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0926

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardMainContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a04de

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCardContainer:Landroidx/core/widget/NestedScrollView;

    const p1, 0x7f0a0a99

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->notNowButtonContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a03e6

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->confirmButtonContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a013b

    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->recommendCardButtonContainer:Landroid/widget/LinearLayout;

    return-object p2
.end method

.method public final updateLayout(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->holderArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->getAsRecommendCardInfo(ILcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;)Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;

    move-result-object p1

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;->descriptionRecommendCard:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$updateLayout$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$updateLayout$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$PagerViewHolder;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
