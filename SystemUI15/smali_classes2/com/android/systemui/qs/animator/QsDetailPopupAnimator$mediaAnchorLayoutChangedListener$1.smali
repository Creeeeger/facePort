.class public final Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

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
    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    sget p2, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->aimingTarget()V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator$mediaAnchorLayoutChangedListener$1;->this$0:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->updateAnimators()V

    :cond_1
    return-void
.end method
