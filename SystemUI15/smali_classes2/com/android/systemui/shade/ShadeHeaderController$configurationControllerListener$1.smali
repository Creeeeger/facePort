.class public final Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object p1, Lcom/android/systemui/shade/ShadeHeaderController;->Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getShadeHeaderSidePadding(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 7

    sget-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071489

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    mul-float/2addr v0, v1

    const v1, 0x7f0a07df

    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x1010095

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f140523

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v1, 0x7f0a0254

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    iget-object v3, v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v3, 0x7f0a0255

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    iget-object v3, v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v3, 0x7f0a0256

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    iget-object v3, v3, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mCarrierText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->QQS_HEADER_CONSTRAINT:I

    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f170015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->QS_HEADER_CONSTRAINT:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f170016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->LARGE_SCREEN_HEADER_CONSTRAINT:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f170008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070628

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v0}, Lcom/android/systemui/shade/ShadeHeaderController;->access$updateConstraintsForInsets(Lcom/android/systemui/shade/ShadeHeaderController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/WindowInsets;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070ed4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getShadeHeaderSidePadding(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QsBatteryModeController;->updateResources()V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateResources$6()V

    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f081090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07103e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07103f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v6, v0, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
