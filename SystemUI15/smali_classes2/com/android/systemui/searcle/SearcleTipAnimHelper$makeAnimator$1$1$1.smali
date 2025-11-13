.class public final Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $this_run:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->$this_run:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;->$this_run:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->animType:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    sget-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->INIT_BUBBLE_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p0}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->updateProperty(Landroid/view/View;FLcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;)V

    return-void
.end method
