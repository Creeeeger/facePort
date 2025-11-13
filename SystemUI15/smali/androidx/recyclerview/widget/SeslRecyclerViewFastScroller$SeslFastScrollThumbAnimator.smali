.class public final Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final mActivatedColor:I

.field public final mBgDrawable:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

.field public final mColorAnimator:Landroidx/recyclerview/animation/SeslColorAnimatable;

.field public final mDefaultColor:I

.field public final mMaxWidthPx:F

.field public final mMinWidthPx:F

.field public final mWidthAnimator:Landroidx/recyclerview/animation/SeslFloatAnimatable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0d28

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    iput-object p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mBgDrawable:Landroidx/recyclerview/sesl/drawable/SeslFastScrollerBgDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071247

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mMinWidthPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071246

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mMaxWidthPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0607c0

    goto :goto_0

    :cond_0
    const v0, 0x7f0607bf

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/16 v0, 0xff

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mDefaultColor:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040159

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/16 v0, 0x99

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mActivatedColor:I

    new-instance p1, Landroidx/recyclerview/animation/SeslFloatAnimatable;

    new-instance v0, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v2, 0x15e

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;-><init>(JLandroid/view/animation/Interpolator;)V

    new-instance v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;I)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p1, v2, v0, v1}, Landroidx/recyclerview/animation/SeslFloatAnimatable;-><init>(FLandroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mWidthAnimator:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    new-instance v0, Landroidx/recyclerview/animation/SeslColorAnimatable;

    new-instance v1, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v4, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v5, 0x96

    invoke-direct {v1, v5, v6, v2}, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;-><init>(JLandroid/view/animation/Interpolator;)V

    new-instance v2, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;I)V

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/recyclerview/animation/SeslColorAnimatable;-><init>(ILandroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mColorAnimator:Landroidx/recyclerview/animation/SeslColorAnimatable;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/animation/SeslAnimatable;->tryAnimateTo(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/animation/SeslAnimatable;->tryAnimateTo(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mWidthAnimator:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    invoke-virtual {v0}, Landroidx/recyclerview/animation/SeslAnimatable;->dispose()V

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mColorAnimator:Landroidx/recyclerview/animation/SeslColorAnimatable;

    invoke-virtual {p0}, Landroidx/recyclerview/animation/SeslAnimatable;->dispose()V

    return-void
.end method
