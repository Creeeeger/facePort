.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPreferencesFromResource(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;->adjustPreviewPaddingsForSetupWizard()V

    return-void
.end method

.method public adjustPreviewPaddingsForSetupWizard()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071361

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77b

    return p0
.end method

.method public final onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    instance-of v0, p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    iget-object p0, p2, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    instance-of p2, p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1401d1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010433

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->updateGlifPreferenceLayout(Landroid/content/Context;Lcom/google/android/setupdesign/GlifPreferenceLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;I)V

    invoke-static {p2, p1, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->setPrimaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;I)V

    const p0, 0x7f1401d5

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton;

    const v1, 0x7f15045e

    const/4 v2, 0x3

    invoke-direct {v0, p0, p2, v2, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    :cond_0
    return-void
.end method
