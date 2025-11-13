.class public final Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    return-void
.end method


# virtual methods
.method public final onNudgeClockRequired()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "{ChipAnimationController}"

    const-string v1, "nudgeClockIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->clockView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->nudgeAnimation(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
