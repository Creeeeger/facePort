.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field final synthetic $springAnimation:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lcom/android/internal/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$springAnimation:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$property:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$view:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invokeOnCancellation animateSpring("

    const-string v2, ") Cancelled! V:"

    const-string/jumbo v3, "{ChipAnimationController}"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;->$springAnimation:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->cancel()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
