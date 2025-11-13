.class public Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final checkBoxRunnable:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

.field public isAppRule:Z

.field public mActionBar:Landroidx/appcompat/app/ActionBar;

.field public mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mRules:[Ljava/util/Map$Entry;

.field public mSelectAllCheckbox:Landroid/widget/CheckBox;

.field public mSelectedId:Ljava/lang/String;

.field public mSelectedZenRuleTextView:Landroid/widget/TextView;

.field public mSelectionChecklist:Ljava/util/ArrayList;

.field public removeButtonLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public static -$$Nest$mToggleAllCheck(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState$3()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->isAppRule:Z

    new-instance v0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1036

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DeleteRulesPreference"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string/jumbo v3, "selected_id"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate selectedKey: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    iput-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    if-eqz v1, :cond_5

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AutomaticZenRule;

    invoke-virtual {v7}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroidx/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v10, 0x7f0d0aac

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AutomaticZenRule;

    invoke-virtual {v10}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f070d98

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->seslSetDividerStartOffset(I)V

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    if-eqz v8, :cond_4

    const-string v6, "com.android.settings"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v7}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->isAppRule:Z

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0079

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f1408bf

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0aa9

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p2, :cond_4

    const/16 v0, 0x10

    invoke-virtual {p2, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    const p2, 0x7f0a1006

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    const p2, 0x7f0a106a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;I)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const p2, 0x7f0a0abf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f0a0102

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_3

    new-instance v1, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto :goto_2

    :cond_4
    const-string p1, "DeleteRulesPreference"

    const-string/jumbo p2, "updateSelectMenu null!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState$3()V

    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0079

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState$3()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selected_id"

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0a0299

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    const v1, 0x7f0d0851

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v0, 0x7f0a04c8

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const v0, 0x7f140c1d

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    new-instance p2, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    iput-object p2, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final updateActionbarState$3()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iget-boolean v4, v3, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120057

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f142905

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez v2, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_8
    :goto_4
    const-string p0, "DeleteRulesPreference"

    const-string/jumbo v0, "updateActionbarState: no custom actionbar"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
