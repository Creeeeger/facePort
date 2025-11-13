.class public final Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\"#$B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001b\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u001a\u0010\u0017R$\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c8\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "carousel$delegate",
        "Lkotlin/Lazy;",
        "getCarousel",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "carousel",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "progressIndicator$delegate",
        "getProgressIndicator",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "progressIndicator",
        "Landroid/widget/ImageView;",
        "backArrow$delegate",
        "getBackArrow",
        "()Landroid/widget/ImageView;",
        "backArrow",
        "forwardArrow$delegate",
        "getForwardArrow",
        "forwardArrow",
        "",
        "value",
        "currentPage",
        "I",
        "setCurrentPage",
        "(I)V",
        "AnimationViewHolder",
        "ImageCarouselAdapter",
        "ProgressIndicatorAdapter",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final ANIMATION_LIST:Ljava/util/List;


# instance fields
.field public final backArrow$delegate:Lkotlin/Lazy;

.field public final carousel$delegate:Lkotlin/Lazy;

.field public currentPage:I

.field public final forwardArrow$delegate:Lkotlin/Lazy;

.field public final progressIndicator$delegate:Lkotlin/Lazy;

.field public final progressIndicatorAdapter:Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/Pair;

    const v1, 0x7f130058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f142a37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const v2, 0x7f130057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f142a38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->ANIMATION_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$carousel$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$carousel$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->carousel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$progressIndicator$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$progressIndicator$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicator$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$backArrow$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$backArrow$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->backArrow$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$forwardArrow$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$forwardArrow$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->forwardArrow$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicatorAdapter:Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;

    new-instance v0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$onPageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$onPageChangeCallback$1;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d05cc

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getCarousel()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    new-instance v2, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070859

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    new-instance v2, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ImageCarouselAdapter;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getProgressIndicator()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getBackArrow()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getForwardArrow()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$carousel$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$carousel$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->carousel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$progressIndicator$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$progressIndicator$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicator$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$backArrow$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$backArrow$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->backArrow$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$forwardArrow$2;

    invoke-direct {p1, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$forwardArrow$2;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->forwardArrow$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicatorAdapter:Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;

    new-instance p2, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$onPageChangeCallback$1;

    invoke-direct {p2, p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$onPageChangeCallback$1;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d05cc

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getCarousel()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070859

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    new-instance v1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ImageCarouselAdapter;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getProgressIndicator()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getBackArrow()Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getForwardArrow()Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$3;-><init>(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$setCurrentPage(Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->setCurrentPage(I)V

    return-void
.end method

.method private final getBackArrow()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->backArrow$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method private final getCarousel()Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->carousel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private final getForwardArrow()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->forwardArrow$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method private final getProgressIndicator()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicator$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private final setCurrentPage(I)V
    .locals 7

    new-instance v0, Lkotlin/ranges/IntRange;

    sget-object v1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->ANIMATION_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lkotlin/ranges/IntProgression;-><init>(III)V

    instance-of v1, v0, Lkotlin/ranges/ClosedFloatRange;

    const/16 v4, 0x2e

    const-string v5, "Cannot coerce value to an empty range: "

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lkotlin/ranges/ClosedFloatRange;

    invoke-virtual {v1}, Lkotlin/ranges/ClosedFloatRange;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget v4, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/ranges/ClosedFloatRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    iget v1, v0, Lkotlin/ranges/IntProgression;->last:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le p1, v1, :cond_5

    iget p1, v0, Lkotlin/ranges/IntProgression;->last:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_5
    :goto_1
    iput p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->currentPage:I

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getBackArrow()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->currentPage:I

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getForwardArrow()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->currentPage:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    if-ge v1, v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->getCarousel()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->currentPage:I

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->progressIndicatorAdapter:Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;

    iget p0, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel;->currentPage:I

    iget v0, p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;->currentIndex:I

    invoke-virtual {p1}, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p0, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    iput p0, p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;->currentIndex:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget p0, p1, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$ProgressIndicatorAdapter;->currentIndex:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
