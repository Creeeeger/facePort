.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const-string/jumbo p1, "{OngoingActivityCardStackView}"

    const-string p2, "Horizon swipe ani done. sendDismiss"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->access$sendDismiss(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAllParentsClipConfig$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    :cond_0
    return-void
.end method
