.class public Lcom/android/systemui/shade/carrier/ShadeCarrier;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

.field public mIsSingleCarrier:Z

.field public mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

.field public mMobileGroup:Landroid/view/View;

.field public mSpacer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getRSSIView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxEms(I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0721

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    const v0, 0x7f0a0727

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0729

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0b40

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;->shadowEnabled:Z

    const v0, 0x7f0a0be0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mSpacer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0108

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxEms(I)V

    return-void
.end method

.method public final setCarrierText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
