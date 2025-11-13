.class public Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public final mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method public static synthetic $r8$lambda$rAl_2oS5ZJUxCdwum8_jgd2txzs(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    return-void
.end method
