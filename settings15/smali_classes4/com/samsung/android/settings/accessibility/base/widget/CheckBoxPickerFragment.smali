.class public abstract Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindPreference(Landroidx/preference/TwoStatePreference;Ljava/lang/String;Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->bindPreference(Landroidx/preference/TwoStatePreference;Ljava/lang/String;Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;Ljava/lang/String;)V

    instance-of p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    if-eqz p0, :cond_1

    iget-object p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    iget-object p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getPrefInstance()Landroidx/preference/CheckBoxPreference;
    .locals 2

    new-instance v0, Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getPrefInstance()Landroidx/preference/TwoStatePreference;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;->getPrefInstance()Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;->context:Landroid/content/Context;

    return-void
.end method
