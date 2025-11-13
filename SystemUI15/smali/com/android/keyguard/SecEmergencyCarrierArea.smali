.class public Lcom/android/keyguard/SecEmergencyCarrierArea;
.super Lcom/android/keyguard/EmergencyCarrierArea;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field public mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V

    const v0, 0x7f0a046d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    const v0, 0x7f0a03ff

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0a0589

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_3
    const/4 v2, 0x1

    if-eq v3, v2, :cond_5

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method
