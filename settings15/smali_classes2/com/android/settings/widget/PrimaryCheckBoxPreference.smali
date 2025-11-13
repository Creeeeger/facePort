.class public Lcom/android/settings/widget/PrimaryCheckBoxPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mChecked:Z

.field public mEnableCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method


# virtual methods
.method public final getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d0543

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/PrimaryCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/PrimaryCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a030f

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean p0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mEnableCheckBox:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mEnableCheckBox:Z

    iget-object p0, p0, Lcom/android/settings/widget/PrimaryCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method
