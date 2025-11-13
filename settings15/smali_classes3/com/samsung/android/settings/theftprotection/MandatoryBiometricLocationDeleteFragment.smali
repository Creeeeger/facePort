.class public Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActionBar:Landroidx/appcompat/app/ActionBar;

.field public mCheckBoxList:Ljava/util/List;

.field public mRemoveButtonLayout:Landroid/widget/RelativeLayout;

.field public mSelectAll:Landroid/widget/CheckBox;

.field public mSelectedCountTextView:Landroid/widget/TextView;

.field public mTrustedPlacesCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectAll:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createActionbarLayout()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d046f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    const v1, 0x7f0a0d9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0d98

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectAll:Landroid/widget/CheckBox;

    new-instance v2, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0da5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public final getCheckedCount()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700d7

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->createActionbarLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->updateActionbarState()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "trusted_places"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mTrustedPlacesCategory:Landroidx/preference/PreferenceCategory;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->createActionbarLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->updateActionbarState()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar()V

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0851

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;)V

    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->updateActionbarState()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateActionbarState()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120025

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    const v3, 0x7f141714

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mRemoveButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mSelectAll:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->mCheckBoxList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
