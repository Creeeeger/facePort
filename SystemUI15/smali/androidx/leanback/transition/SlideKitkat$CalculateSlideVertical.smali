.class public abstract Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/leanback/transition/SlideKitkat$CalculateSlide;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHere(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public final getProperty()Landroid/util/Property;
    .locals 0

    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    return-object p0
.end method
