.class public final Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$lambda$1$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $arrowToEdgeOffset$inlined:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$lambda$1$$inlined$doOnLayout$1;->$arrowToEdgeOffset$inlined:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleEducationViewController$showStackEducation$lambda$1$$inlined$doOnLayout$1;->$arrowToEdgeOffset$inlined:F

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
