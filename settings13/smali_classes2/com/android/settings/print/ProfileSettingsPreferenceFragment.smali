.class public abstract Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# instance fields
.field private mHeader:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 49
    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p2

    .line 50
    invoke-static {p1}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/dashboard/profileselector/UserAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    sget p2, Lcom/android/settings/R$layout;->spinner_view:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->mHeader:Landroid/view/View;

    .line 60
    sget v0, Lcom/android/settings/R$id;->profile_spinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 61
    iget-object v0, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->mHeader:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 67
    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    new-instance v0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    return-void
.end method
