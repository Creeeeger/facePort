.class public Lcom/android/settings/widget/TwoStateButtonPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mButtonOff:Landroid/widget/Button;

.field public final mButtonOn:Landroid/widget/Button;

.field public mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04076a

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/R$styleable;->TwoStateButtonPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const v0, 0x7f142e0a

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0efa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0ef9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStateOffButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    return-object p0
.end method

.method public getStateOnButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0efa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mIsChecked:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/TwoStateButtonPreference;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
