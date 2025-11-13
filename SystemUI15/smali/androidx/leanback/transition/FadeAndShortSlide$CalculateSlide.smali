.class public abstract Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getGoneY(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method
