.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;
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
.field final synthetic $show:Z

.field final synthetic $state:I

.field final synthetic $v:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;I)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$show:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$v:Landroid/view/View;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$state:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$show:Z

    const-string v0, "Job invokeOnCompletion() show:"

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$show:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$v:Landroid/view/View;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$v:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;->$state:I

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideView(Landroid/view/View;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
