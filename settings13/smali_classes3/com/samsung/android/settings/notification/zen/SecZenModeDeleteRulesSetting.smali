.class public Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecZenModeDeleteRulesSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field checkBoxRunnable:Ljava/lang/Runnable;

.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field protected mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOptionsMenu:Landroid/view/Menu;

.field protected mRules:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedId:Ljava/lang/String;

.field private mSelectedZenRuleTextView:Landroid/widget/TextView;

.field private mSelectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private removeButtonLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSelectAllCheckbox(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedId(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedZenRuleTextView(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectionChecklist(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedId(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mToggleAllCheck(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->ToggleAllCheck(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishSelectMode(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->finishSelectMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTitleAlpha(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;Lcom/google/android/material/appbar/AppBarLayout;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->getTitleAlpha(Lcom/google/android/material/appbar/AppBarLayout;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateActionbarState(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState()V

    return-void
.end method

.method private addPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 131
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 132
    new-instance v5, Landroidx/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 133
    sget v6, Lcom/android/settings/R$layout;->sec_zenmode_checkboxpreference:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 134
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 137
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private backToZenRuleslist()V
    .locals 0

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private clearmSelectionChecklist()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 298
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createActionbarLayout()V
    .locals 5

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_zen_delete_rules_selection_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    .line 173
    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 178
    sget v1, Lcom/android/settings/R$id;->text_selected_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$1;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget v1, Lcom/android/settings/R$id;->toggle_selection_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 187
    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$2;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v1, Lcom/android/settings/R$id;->number_selected_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v3, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_0

    .line 197
    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$3;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_2

    .line 209
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto :goto_0

    :cond_1
    const-string p0, "DeleteRulesPreference"

    const-string v0, "updateSelectMenu null!!"

    .line 212
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->addPreferences(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method private finishSelectMode()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->clearmSelectionChecklist()V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->backToZenRuleslist()V

    return-void
.end method

.method private getNumOfCheckedList()I
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    .line 330
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 333
    :cond_1
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 334
    iput-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getTitleAlpha(Lcom/google/android/material/appbar/AppBarLayout;)F
    .locals 7

    .line 219
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    .line 220
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p0, v0, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p0, p0

    const v0, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v0, p0

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr p0, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v2, v0

    int-to-float p1, p1

    sub-float/2addr p1, p0

    mul-float/2addr v2, p1

    float-to-double p0, v2

    const-wide/16 v3, 0x0

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_0

    const-wide v5, 0x406fe00000000000L    # 255.0

    cmpg-double v0, p0, v5

    if-gtz v0, :cond_0

    const/high16 p0, 0x437f0000    # 255.0f

    div-float/2addr v2, p0

    move v1, v2

    goto :goto_0

    :cond_0
    cmpg-double p0, p0, v3

    if-gez p0, :cond_1

    const/4 p0, 0x0

    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateActionbarState()V
    .locals 8

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->getNumOfCheckedList()I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->sec_zen_mode_selected_rules:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_zen_mode_select_schedule:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-nez v0, :cond_3

    .line 364
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 366
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "DeleteRulesPreference"

    const-string v0, "updateActionbarState: no custom actionbar"

    .line 349
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deleteZenRules()Z
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 374
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1036

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DeleteRulesPreference"

    const-string v1, "onCreate"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ":settings:show_fragment_args"

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "selected_id"

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate selectedKey: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectionChecklist:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mOptionsMenu:Landroid/view/Menu;

    .line 157
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->createActionbarLayout()V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 317
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 318
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->updateActionbarState()V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 275
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mRules:[Ljava/util/Map$Entry;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedId:Ljava/lang/String;

    const-string v0, "selected_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mActionBar:Landroidx/appcompat/app/ActionBar;

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->setBottomNaviButtonForRemove()V

    return-void
.end method

.method public setBottomNaviButtonForRemove()V
    .locals 4

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 394
    sget v1, Lcom/android/settings/R$layout;->sec_bottom_naviagtion_delete_layout:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 397
    new-instance v1, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 405
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method
