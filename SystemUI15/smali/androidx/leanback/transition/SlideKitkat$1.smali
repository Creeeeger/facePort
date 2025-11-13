.class public final Landroidx/leanback/transition/SlideKitkat$1;
.super Landroidx/leanback/transition/SlideKitkat$CalculateSlideHorizontal;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGone(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method
