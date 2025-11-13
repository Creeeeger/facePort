.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string/jumbo v1, "resetAnimationSet end()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAllParentsClipConfig$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$resetAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
