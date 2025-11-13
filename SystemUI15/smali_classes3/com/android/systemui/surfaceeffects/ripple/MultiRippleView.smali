.class public final Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ripplePaint:Landroid/graphics/Paint;

.field public final ripples:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic getRipples$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    iget-object v4, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    iget-object v5, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    if-nez v2, :cond_2

    iget-object v2, v3, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method
