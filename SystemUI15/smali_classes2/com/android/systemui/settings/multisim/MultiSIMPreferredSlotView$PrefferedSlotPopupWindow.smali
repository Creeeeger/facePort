.class public final Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;
.super Landroid/widget/PopupWindow;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPopupContentView:Landroid/view/View;

.field public final mPopupNonSelectedFont:Landroid/graphics/Typeface;

.field public final mPopupNormalTextColor:I

.field public final mPopupSelectedFont:Landroid/graphics/Typeface;

.field public final mPopupSelectedTextColor:I

.field public final mPopupWindowTopMargin:I

.field public final mSlotListAskButtonGroup:Landroid/view/ViewGroup;

.field public final mSlotListAskButtonText:Landroid/widget/TextView;

.field public final mSlotListAskCheckedImage:Landroid/widget/ImageView;

.field public final mSlotListButton1Group:Landroid/view/ViewGroup;

.field public final mSlotListButton2Group:Landroid/view/ViewGroup;

.field public final mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

.field public final mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

.field public final mSlotListButtonImage1:Landroid/widget/ImageView;

.field public final mSlotListButtonImage2:Landroid/widget/ImageView;

.field public final mSlotListButtonText1:Landroid/widget/TextView;

.field public final mSlotListButtonText2:Landroid/widget/TextView;

.field public final mSlotListCarrierName1:Landroid/widget/TextView;

.field public final mSlotListCarrierName2:Landroid/widget/TextView;

.field public final mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

.field public final mSlotListOthersButtonText:Landroid/widget/TextView;

.field public final mSlotListOthersCheckedImage:Landroid/widget/ImageView;

.field public final mSlotListPhoneNumber1:Landroid/widget/TextView;

.field public final mSlotListPhoneNumber2:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070e21

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupWindowTopMargin:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06068d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNormalTextColor:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06068e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedTextColor:I

    const-string/jumbo p1, "sec"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const/16 v3, 0x258

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v2, 0x190

    invoke-static {p1, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    const p1, 0x7f0d0308

    invoke-static {p2, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b80

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b85

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b82

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage1:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b81

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage1:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b83

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b84

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b87

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b8c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b89

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage2:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b88

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonCheckedImage2:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b8a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0b8b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0117

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a011a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0119

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskCheckedImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    const v1, 0x7f130e77

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    const v1, 0x7f130e7a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0896

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0899

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    const v1, 0x7f0a0898

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersCheckedImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080e36

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070e13

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->updateSlotListPopupContents()V

    return-void
.end method


# virtual methods
.method public final setSlotListMenuColor(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public final setSlotListMenuFont(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    if-ne p2, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupNonSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mPopupSelectedFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final updateSlotListPopupContents()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonImage2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->-$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListCarrierName2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->mSlotListPhoneNumber2:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
