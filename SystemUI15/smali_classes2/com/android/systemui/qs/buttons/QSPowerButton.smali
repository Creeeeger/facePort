.class public Lcom/android/systemui/qs/buttons/QSPowerButton;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPowerButton:Landroid/widget/ImageButton;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public final mToolTipString:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    const p1, 0x7f13137f

    iput p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mToolTipString:I

    return-void
.end method


# virtual methods
.method public final closeTooltip()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->updateTouchTargetArea$3()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a08ff

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    const v3, 0x7f081467

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0713bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d26

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/systemui/util/ShadowDelegateUtil;->createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->updateTouchTargetArea$3()V

    new-instance v0, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0901

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final updateTouchTargetArea$3()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getButtonsWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07105a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
