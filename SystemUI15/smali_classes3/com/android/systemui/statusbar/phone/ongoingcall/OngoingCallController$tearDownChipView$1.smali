.class final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const v1, 0x7f0a0875

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$tearDownChipView$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
