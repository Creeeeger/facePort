.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;

.field public final mBackButton:Landroid/widget/RelativeLayout;

.field public final mFlashLightHelpText:Landroid/widget/TextView;

.field public final mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

.field public final mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

.field public final mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;)V

    const v3, 0x7f0a0c58

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    const v3, 0x7f0a0c5b

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    const v3, 0x7f0a0c5c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    const v3, 0x7f0a0c51

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0c59

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpText:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    const v5, 0x7f0a013c

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    iget-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    const v7, 0x7f0a0454

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    const v7, 0x7f0a0455

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    const v8, 0x7f0a0457

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string/jumbo v10, "sec"

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    const/16 v12, 0x258

    invoke-static {v11, v12, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v11, 0x7f070e87

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v13, 0x7f070e86

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f070e83

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v15, 0x7f07154d

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, v7, v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f070e7f

    const v11, 0x3f666666    # 0.9f

    const v13, 0x3fa66666    # 1.3f

    invoke-static {v9, v6, v11, v13}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const v9, 0x7f070e84

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v3, v9, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const v9, 0x7f070e85

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    const/16 v15, 0x190

    invoke-static {v9, v15, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    const v9, 0x7f0a0da6

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const v15, 0x7f070e8b

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v6, 0x7f070e88

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v15, 0x7f070e81

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const v6, 0x7f070e80

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, v7, v15, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v6, 0xd

    invoke-virtual {v9, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f070e8a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v7, v9}, Landroid/widget/Button;->setTextSize(IF)V

    const v9, 0x7f070e89

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v3, v15, v7, v15, v7}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/RippleDrawable;

    const v9, 0x7f070e7d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v15, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v15, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v3, v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0813e8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v6, 0x7f071540

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x7f071544

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v6, 0x7f071543

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v15, 0x7f071542

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f071541

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    const v6, 0x7f08142c

    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    const v6, 0x7f1312e4

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v15, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$$ExternalSyntheticLambda0;

    invoke-direct {v15, v5}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz v2, :cond_0

    const v1, 0x7f060984

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0609e3

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    const v2, 0x7f0a0da7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v5, v12, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v5, 0x7f070e8f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v10, v6, v11

    if-gez v10, :cond_1

    move v6, v11

    goto :goto_1

    :cond_1
    cmpl-float v10, v6, v13

    if-lez v10, :cond_2

    move v6, v13

    :cond_2
    :goto_1
    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    const v6, 0x7f071558

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f070e8e

    invoke-static {v1, v2, v11, v13}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const v2, 0x7f070e8d

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    const v2, 0x7f0a0da8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x7f070e8b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v5, 0x7f070e88

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v5, 0x7f070e8c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v10, v6, v11

    if-gez v10, :cond_3

    move v6, v11

    goto :goto_2

    :cond_3
    cmpl-float v10, v6, v13

    if-lez v10, :cond_4

    move v6, v13

    :cond_4
    :goto_2
    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f070e7f

    invoke-static {v3, v2, v11, v13}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const v2, 0x7f070e8a

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const v2, 0x7f070e89

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v7, v2, v7}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    const v3, 0x7f070e7d

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v1, v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_5
    return-void
.end method

.method public static getBackgroundColor(Landroid/content/res/Resources;)I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0609d8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0609e4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTextColor(Landroid/content/res/Resources;)I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0609db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x7f060987

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f0609da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    filled-new-array {v2}, [[I

    move-result-object v2

    new-instance v3, Landroid/content/res/ColorStateList;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    const v0, 0x7f0609d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method
