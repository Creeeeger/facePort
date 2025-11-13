.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final accountAddress$delegate:Lkotlin/Lazy;

.field public final asUsageLabel:Landroid/widget/TextView;

.field public final asUsageRate:Landroid/widget/TextView;

.field public final divider$delegate:Lkotlin/Lazy;

.field public final moreOptionIcon$delegate:Lkotlin/Lazy;

.field public final motionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final mountButton$delegate:Lkotlin/Lazy;

.field public final mountButtonText$delegate:Lkotlin/Lazy;

.field public final mountSubTitle$delegate:Lkotlin/Lazy;

.field public final mountView:Landroid/widget/LinearLayout;

.field public final progressContainer:Landroid/widget/LinearLayout;

.field public final showMore$delegate:Lkotlin/Lazy;

.field public final showMoreContainer$delegate:Lkotlin/Lazy;

.field public final storageName:Landroid/widget/TextView;

.field public final summaryContainer:Landroid/widget/LinearLayout;

.field public final totalSize:Landroid/widget/TextView;

.field public final usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

.field public final usageProgressBar:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

.field public final usageRateContainer:Landroid/widget/LinearLayout;

.field public final usedSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a110d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "requireViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->storageName:Landroid/widget/TextView;

    const v0, 0x7f0a0147

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageRate:Landroid/widget/TextView;

    const v0, 0x7f0a0144

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->asUsageLabel:Landroid/widget/TextView;

    const v0, 0x7f0a10d0

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usedSize:Landroid/widget/TextView;

    const v0, 0x7f0a107b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->totalSize:Landroid/widget/TextView;

    const v0, 0x7f0a040c

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->motionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v0, 0x7f0a0142

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    const v0, 0x7f0a0146

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageProgressBar:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageProgressBar;

    const v0, 0x7f0a0149

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->summaryContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0145

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->progressContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0148

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->usageRateContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a09b7

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountView:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$accountAddress$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$accountAddress$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->accountAddress$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountSubTitle$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountSubTitle$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountSubTitle$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountButton$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountButton$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountButton$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$moreOptionIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$moreOptionIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->moreOptionIcon$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountButtonText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$mountButtonText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->mountButtonText$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$divider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$divider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->divider$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$showMoreContainer$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$showMoreContainer$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMoreContainer$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$showMore$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder$showMore$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMore$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getShowMore()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/ViewPagerViewHolder;->showMore$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method
