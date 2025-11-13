.class public final Lcom/android/keyguard/CarrierTextController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$600(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$700(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final startedGoingToSleep()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$400(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$500(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    if-nez v0, :cond_0

    const-string v0, "Shade"

    iget-object v1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CarrierTextController"

    const-string v0, "BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$000(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$100(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$200(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    :goto_0
    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$300(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
