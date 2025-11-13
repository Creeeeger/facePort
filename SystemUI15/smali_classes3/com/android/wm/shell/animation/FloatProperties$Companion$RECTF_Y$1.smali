.class public final Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RectFY"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_0
    const p0, -0x800001

    :goto_0
    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_0
    return-void
.end method
