.class public final Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/PanelSlideEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/PanelSlideEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$2;->this$0:Lcom/android/systemui/shade/PanelSlideEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$2;->this$0:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iget-boolean p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide(FLcom/android/systemui/shade/PanelSlideEventHandler$Direction;Z)V

    :cond_0
    return-void
.end method
