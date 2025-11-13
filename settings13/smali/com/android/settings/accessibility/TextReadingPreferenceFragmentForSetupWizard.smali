.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.source "TextReadingPreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateResetButtonPadding()V
    .locals 1

    const-string v0, "reset"

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 91
    sget v0, Lcom/android/settings/R$id;->reset_button:I

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 93
    invoke-static {p0}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77b

    return p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;->updateResetButtonPadding()V

    return-void
.end method
