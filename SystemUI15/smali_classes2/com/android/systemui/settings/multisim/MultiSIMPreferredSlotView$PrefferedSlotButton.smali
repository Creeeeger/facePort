.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtonView:Landroid/view/ViewGroup;

.field public final mCarrierNameText:Landroid/widget/TextView;

.field public final mCategoryText:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public final mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

.field public final mImsDataInfoLine:Landroid/view/ViewGroup;

.field public final mSimImageForDataInfo:Landroid/widget/ImageView;

.field public final mSimImageForSimName:Landroid/widget/ImageView;

.field public final mSimNameAndImageLine:Landroid/view/ViewGroup;

.field public final mSimNameOrAskText:Landroid/widget/TextView;

.field public final mSimNameText:Landroid/widget/TextView;

.field public final mSimSlotId:I

.field public final mSlotButtonCategoryTextLine:Landroid/view/ViewGroup;

.field public final mTextSimPrimary:Landroid/widget/TextView;

.field public final mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0307

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    iput v6, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    goto :goto_0

    :cond_0
    iput v7, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    :goto_0
    iput-object v3, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0b93

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    const v5, 0x7f0a0b91

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonCategoryTextLine:Landroid/view/ViewGroup;

    const v5, 0x7f0a0b97

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    const v5, 0x7f0a0b90

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    const v5, 0x7f0a0b9a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    const v5, 0x7f0a0b8f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    const v5, 0x7f0a0b94

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    const v5, 0x7f0a0b95

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    const v5, 0x7f0a0b99

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    const v5, 0x7f0a0b96

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0a0b8e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-boolean v7, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v5, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSIMInfoIconManagerFactory:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;

    sget-object v10, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    new-instance v15, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    iget-object v14, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iget-object v13, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mBtTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    iget v12, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    iget-object v11, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    iget-object v8, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iget-object v5, v5, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    move-object/from16 v16, v8

    move-object v8, v15

    move/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    move-object v13, v5

    move-object v5, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;I)V

    iput-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->setTint(II)V

    :cond_1
    iget-object v5, v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    sget-object v8, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    if-eq v2, v6, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    const v2, 0x7f130e6f

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const v2, 0x7f130e75

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v2, 0x7f130e79

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final getSIMIconFillColor()I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    iget-object v0, p0, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget v0, v0, Lcom/android/systemui/DualToneHandler$Color;->single:I

    iget-object p0, p0, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget p0, v1, Lcom/android/systemui/DualToneHandler$Color;->single:I

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final isSimInfoButton()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "US"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final refreshSlotInfo()V
    .locals 9

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    :goto_0
    sget-object v5, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v1, v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    if-le v0, v2, :cond_5

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    const/16 v6, 0x8

    if-ne v1, v5, :cond_8

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v2, 0x7f130e77

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v2, 0x7f130e7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    if-ne v1, v5, :cond_9

    if-le v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v2, 0x7f130e78

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_9
    sget-object v7, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v1, v7, :cond_a

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v8

    xor-int/2addr v2, v8

    if-eqz v2, :cond_a

    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-nez v2, :cond_a

    iget-boolean v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v2, 0x7f130e71

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_a
    if-ne v1, v7, :cond_b

    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v8, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v8, v8, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {v2, v8}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataBlocked(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_b
    if-eq v1, v5, :cond_e

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-eq v1, v2, :cond_e

    if-ne v1, v7, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonCategoryTextLine:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    invoke-static {v3, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v2, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_e
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public final updateEdgePadding(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method public final updateTextColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget v2, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->isSimInfoButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->setTint(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v3, v0, :cond_1

    iget-boolean v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f080e32

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f080e34

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f080e31

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_2
    return-void
.end method
