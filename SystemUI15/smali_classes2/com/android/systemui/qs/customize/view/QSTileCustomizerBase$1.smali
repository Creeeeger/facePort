.class public final Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;
.super Landroid/view/View$DragShadowBuilder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$pointX:F

.field public final synthetic val$pointY:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;Landroid/view/View;FF)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;->val$pointX:F

    iput p4, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;->val$pointY:F

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;->val$pointX:F

    float-to-int p1, p1

    iget p0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase$1;->val$pointY:F

    float-to-int p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
