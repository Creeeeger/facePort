.class final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    const-string/jumbo v0, "swipeAnimationSet end()"

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isAnimating:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->resetAllParentsClipConfig$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v3

    const-string/jumbo v4, "swapTopItemToBottom() topViewIndex = "

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItem$1()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeAnimationSet$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
