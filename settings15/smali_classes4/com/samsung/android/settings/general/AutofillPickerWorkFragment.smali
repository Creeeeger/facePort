.class public Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p0}, Lcom/samsung/android/settings/general/AutofillPicker;->buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AutofillPickerWorkFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x318

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/credentials/CredentialManager;->isServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f170180

    return p0

    :cond_0
    const p0, 0x7f17017f

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/credentials/CredentialManager;->isServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;

    new-instance v4, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/general/AutofillPickerWorkFragment$1;-><init>(Lcom/samsung/android/settings/general/AutofillPickerWorkFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;Landroidx/fragment/app/FragmentManager;Landroid/content/Intent;Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/applications/autofill/PasswordsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_0
    return-void
.end method
