.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;
.super Landroid/view/View$DragShadowBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$pointX:F

.field public final synthetic val$pointY:F

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Landroid/view/View;Landroid/view/View;FF)V
    .locals 0

    iput-object p3, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$v:Landroid/view/View;

    iput p4, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$pointX:F

    iput p5, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$pointY:F

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$pointX:F

    float-to-int p1, p1

    int-to-float v0, v0

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$3;->val$pointY:F

    float-to-int p0, p0

    int-to-float v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
