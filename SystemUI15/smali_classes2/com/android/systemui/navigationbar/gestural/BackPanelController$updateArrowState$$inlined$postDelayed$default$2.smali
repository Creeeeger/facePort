.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;->this$0:Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->access$getMView$p$s-1759132487(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    return-void
.end method
