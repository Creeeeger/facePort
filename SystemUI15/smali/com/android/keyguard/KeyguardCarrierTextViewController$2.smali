.class public final Lcom/android/keyguard/KeyguardCarrierTextViewController$2;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method
