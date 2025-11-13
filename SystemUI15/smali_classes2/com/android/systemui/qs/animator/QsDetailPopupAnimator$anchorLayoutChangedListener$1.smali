.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget p3, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorLeftOnStart:I

    iget p2, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->widthDiff:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget p3, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorRightOnStart:I

    iget p2, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->widthDiff:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget p3, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorTopOnStart:I

    iget p2, p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->heightDiff:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$anchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iget p2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->anchorBottomOnStart:I

    iget p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->heightDiff:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setBottom(I)V

    :cond_1
    return-void
.end method
