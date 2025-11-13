.class public final Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method
