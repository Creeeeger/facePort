.class public Lcom/android/systemui/animation/view/LaunchableImageView;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public final delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v0, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;-><init>(Lcom/android/systemui/animation/view/LaunchableImageView;)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;-><init>(Lcom/android/systemui/animation/view/LaunchableImageView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;-><init>(Lcom/android/systemui/animation/view/LaunchableImageView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/view/LaunchableImageView$delegate$1;-><init>(Lcom/android/systemui/animation/view/LaunchableImageView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public static final synthetic access$setVisibility$s1125864064(Lcom/android/systemui/animation/view/LaunchableImageView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/view/LaunchableImageView;->delegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    return-void
.end method
