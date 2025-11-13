.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mProcDestroy:Z

    if-eqz p1, :cond_0

    const-string p0, "BroadcastReceiver onReceive: discard by mProcDestroy:"

    const-string/jumbo p2, "{OngoingExpandedPipController}"

    invoke-static {p0, p2, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    const-string v0, "homekey"

    invoke-static {p1, v0, p2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningCollapseAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningExpandAnimation:Z

    xor-int/lit8 p2, p2, 0x1

    and-int/2addr p2, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isScreenTurnedOn:Z

    and-int/2addr p2, v0

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->collapseAnimation()V

    :cond_2
    return-void
.end method
