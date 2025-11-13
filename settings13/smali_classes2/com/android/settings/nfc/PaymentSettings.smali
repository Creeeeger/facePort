.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PaymentSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 132
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    sget v1, Lcom/android/settings/R$xml;->nfc_payment_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/nfc/NfcDefaultPaymentPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/nfc/PaymentSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PaymentSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x46

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 64
    sget p0, Lcom/android/settings/R$xml;->nfc_payment_settings:I

    return p0
.end method

.method isShowEmptyImage(Landroidx/preference/PreferenceScreen;)Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 123
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 86
    const-class p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    .line 87
    const-class p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/NfcForegroundPreferenceController;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 114
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    sget p2, Lcom/android/settings/R$string;->nfc_payment_how_it_works:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 116
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 p0, 0x0

    .line 118
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 109
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 103
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/PaymentSettings;->isShowEmptyImage(Landroidx/preference/PreferenceScreen;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->nfc_payment_empty:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p2, 0x102003f

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
