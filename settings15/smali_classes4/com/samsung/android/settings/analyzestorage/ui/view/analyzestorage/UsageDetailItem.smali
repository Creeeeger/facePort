.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;
.super Landroid/widget/GridLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\tB\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;",
        "Landroid/widget/GridLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "UsageDetailViewHolder",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

.field public controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

.field public final detailItemViewMap:Ljava/util/List;

.field public divider:Landroid/view/View;

.field public domainType:I

.field public final handler:Landroid/os/Handler;

.field public isLandScape:Z

.field public isRTL:Z

.field public isShowMoreItem:Z

.field public final summaryCount:I

.field public final usageDetailClickListener:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->summaryCount:I

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->usageDetailClickListener:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->summaryCount:I

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->usageDetailClickListener:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppearAnimation(Landroid/view/animation/Animation;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    iget v5, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->summaryCount:I

    if-lt v2, v5, :cond_1

    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public final setChildVisible()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isShowMoreItem:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->summaryCount:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setDividerLayoutParams(Z)V
    .locals 5

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, p1, v3}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700ba

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07016f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->divider:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final setInitItem(Landroidx/lifecycle/LifecycleOwner;Ljava/util/List;IZLcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;ZZ)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "overViewController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iput-boolean p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iput-boolean p7, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isShowMoreItem:Z

    iput-boolean p6, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isRTL:Z

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move p4, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p6, p4, 0x1

    const/4 p7, 0x0

    if-ltz p4, :cond_5

    check-cast p5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p4, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0065

    invoke-virtual {v1, v3, p7, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->divider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setDividerLayoutParams(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->divider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1, p7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p7

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1, p7, p5}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V

    iget-object p5, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Landroid/widget/GridLayout$LayoutParams;

    invoke-static {v2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    invoke-direct {p5, v1, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/4 v1, -0x2

    iput v1, p5, Landroid/widget/GridLayout$LayoutParams;->height:I

    iput p3, p5, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-virtual {p7, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p5, v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->categoryBtn:Landroid/widget/ImageView;

    if-eqz p5, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isRTL:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_3
    iget-boolean p5, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    if-eqz p5, :cond_4

    invoke-virtual {p0, p7, p4}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setItemPadding(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {p0, p7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    move p4, p6

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw p7

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setChildVisible()V

    return-void
.end method

.method public final setItemPadding(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    const-string/jumbo v1, "view"

    const v2, 0x7f07016f

    const v3, 0x7f0700dd

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->asUsageInfoManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-ge p0, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    rem-int/lit8 p2, p2, 0x2

    const p0, 0x7f0700da

    if-nez p2, :cond_2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->getDimenSize(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method public final updateColumnCount(Z)V
    .locals 8

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    new-instance v4, Landroid/widget/GridLayout$LayoutParams;

    const/high16 v5, -0x80000000

    invoke-static {v5}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v7}, Landroid/widget/GridLayout;->spec(IF)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/4 v5, -0x2

    iput v5, v4, Landroid/widget/GridLayout$LayoutParams;->height:I

    iput v3, v4, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isLandScape:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setDividerLayoutParams(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setDividerLayoutParams(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v3, p1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setItemPadding(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final updateSize(Ljava/util/ArrayList;)V
    .locals 10

    const-string/jumbo v0, "usageSizeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->detailItemViewMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_9

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    :cond_0
    if-eqz v5, :cond_8

    const-string v2, "mType"

    iget-object v6, v5, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mType:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailColor:Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v7}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getColorResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailName:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getTitleResId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getTitleResId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailSize:Landroid/widget/TextView;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;->mSize:Ljava/lang/Long;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1403f1

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-nez v6, :cond_7

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailSize:Landroid/widget/TextView;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1403ec

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_4
    move v2, v4

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_a
    return-void
.end method
