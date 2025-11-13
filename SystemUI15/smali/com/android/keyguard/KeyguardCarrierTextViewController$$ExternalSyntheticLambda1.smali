.class public final synthetic Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
