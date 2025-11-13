.class public Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;
.super Lcom/android/settingslib/widget/ButtonPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public button:Landroid/view/View;

.field public buttonEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->buttonEnabled:Z

    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/ButtonPreference;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/settingslib/widget/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/settings/R$styleable;->ButtonPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/ButtonPreference;->setGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/ButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0e20

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->button:Landroid/view/View;

    iget-boolean p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->buttonEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->setEnabled(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->button:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityContainedButtonPreference;->buttonEnabled:Z

    return-void
.end method
