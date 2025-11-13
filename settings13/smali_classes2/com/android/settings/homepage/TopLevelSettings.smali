.class public Lcom/android/settings/homepage/TopLevelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TopLevelSettings.java"

# interfaces
.implements Lcom/android/settings/homepage/SplitLayoutListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

.field private mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

.field private mFirstStarted:Z

.field private mGoodSettingsSupported:Z

.field private mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

.field private mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

.field private mIsEmbeddingActivityEnabled:Z

.field private mIsMultiPaneSupported:Z

.field private mLastUpdated:J

.field private mPaddingHorizontal:I

.field private mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

.field private mScrollNeeded:Z


# direct methods
.method public static synthetic $r8$lambda$8wVdgnvVsdwyOEzSjfb170k5pTY(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$updateHomepagePreference$6(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ZIUd7_pgVYKCLxuOpZcL7lIYog(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$updateTopLevelPreferencesFromGoodSettings$4(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PE_r-0rhNxEFku4Ud3XSUg8X7VY(Lcom/android/settings/homepage/TopLevelSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$onCreatePreferences$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIdgAF50SnPZEUS0luULvOuvhOA(Lcom/android/settings/homepage/TopLevelSettings;ZLandroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$updateInsetCategoryPreference$5(ZLandroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ggDZTJCtJ8T5WS-ljOoV3hggc2Y(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$updateTopLevelPreferencesFromGoodSettings$3(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mDRIFDorSPstT87_3aJAV8Qg9xY(Lcom/android/settings/homepage/TopLevelSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->updateTopLevelPreferencesFromGoodSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$pgyEGPzI12ZZhqgJnBInXqR0x8U(Lcom/android/settings/homepage/TopLevelSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qKWXEWIAaYQXiQ3d4Uv8A08IiMA(Lcom/android/settings/homepage/TopLevelSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$checkTopLevelPreferencesFromGoodSettings$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 937
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$2;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 429
    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    const-wide/16 v1, 0x0

    .line 430
    iput-wide v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    const-string v1, "TopLevelSettings#Constructor"

    .line 141
    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "need_search_icon_in_action_bar"

    .line 147
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private checkTopLevelPreferencesFromGoodSettings()V
    .locals 1

    .line 497
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/homepage/TopLevelSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 921
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 924
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    .line 929
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 932
    :cond_3
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private isOnlyOneActivityInTask()Z
    .locals 2

    .line 358
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 360
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 855
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 858
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 863
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;->init()V

    .line 864
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 866
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 870
    :cond_2
    invoke-interface {p1, v2}, Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;->doForEach(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$checkTopLevelPreferencesFromGoodSettings$2()V
    .locals 3

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "home_configuration_top_level_preferences"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->compareAndMergePolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/homepage/TopLevelSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreatePreferences$1(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->loadContextualCards(Landroidx/loader/app/LoaderManager;Z)V

    return-void
.end method

.method private static synthetic lambda$updateHomepagePreference$6(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroidx/preference/Preference;)V
    .locals 1

    .line 907
    instance-of v0, p2, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    if-eqz v0, :cond_0

    .line 908
    check-cast p2, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    invoke-interface {p2}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;->getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 909
    invoke-interface {p2}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;->getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setSummaryTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateInsetCategoryPreference$5(ZLandroidx/preference/Preference;)V
    .locals 2

    .line 882
    instance-of v0, p2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_3

    .line 883
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contextual_card_category"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 884
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_added_footer_preference"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 885
    sget v0, Lcom/android/settings/R$layout;->sesl_preference_category:I

    goto :goto_0

    .line 886
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->sec_no_title_subheader_divider_layout:I

    .line 885
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 887
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 890
    check-cast p2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 891
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 892
    sget p1, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    goto :goto_2

    .line 893
    :cond_2
    sget p1, Lcom/android/settings/R$dimen;->sec_no_title_subheader_divider_height:I

    .line 891
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 890
    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$updateTopLevelPreferencesFromGoodSettings$3(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 615
    instance-of p0, p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    return p0
.end method

.method private static synthetic lambda$updateTopLevelPreferencesFromGoodSettings$4(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 617
    check-cast p0, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateFromGoodSettings()V

    return-void
.end method

.method private updateHomepagePreference(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_dashboard_simplified_title_text:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010038

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1

    .line 904
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$color;->sec_dashboard_simplified_summary_text:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 906
    :goto_1
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    return-void
.end method

.method private updateInsetCategoryPreference(Z)V
    .locals 1

    .line 881
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    return-void
.end method

.method private updateLayout(Z)V
    .locals 5

    .line 659
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 665
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz p1, :cond_1

    move-object v1, v4

    .line 667
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 668
    invoke-direct {p0, v0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 669
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->seslSetRoundedCorner(Z)V

    .line 670
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->updateInsetCategoryPreference(Z)V

    .line 671
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->updateHomepagePreference(Z)V

    .line 672
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 674
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    const-string v0, "TopLevelSettings#updatePreferences"

    .line 445
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "home_configuration_top_level_preferences"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->policyExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TopLevelSettings#GoodSettings.policyChanged"

    .line 452
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 454
    iget-wide v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getLastUpdated()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    .line 456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getLastUpdated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    .line 457
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->updateTopLevelPreferencesFromGoodSettings()V

    .line 460
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "TopLevelSettings#GoodSettings.compareAndMergePolicy"

    .line 461
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->checkTopLevelPreferencesFromGoodSettings()V

    .line 465
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_0

    .line 468
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    const-wide/16 v0, 0x0

    .line 470
    iput-wide v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->updatePreferenceStates()V

    .line 477
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private updateTopLevelPreferencesFromGoodSettings()V
    .locals 12

    const-string v0, "TopLevelSettings"

    .line 517
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v1

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "home_configuration_top_level_preferences"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicyTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    .line 525
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 527
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 529
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "order"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 530
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string/jumbo v8, "type"

    .line 531
    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x33155f

    if-eq v10, v11, :cond_1

    const v6, 0x302bcfe

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "category"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_2

    :cond_1
    const-string/jumbo v10, "menu"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v9

    :goto_2
    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v5, "key"

    .line 533
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 542
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v6

    .line 543
    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 544
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    .line 545
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 549
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "contextual_card_category"

    if-eqz v4, :cond_a

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 551
    instance-of v9, v4, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v9, :cond_9

    .line 552
    move-object v8, v4

    check-cast v8, Lcom/android/settings/widget/HomepagePreference;

    .line 553
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 555
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonObject;

    const-string v10, "isVisible"

    .line 556
    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 557
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v9

    .line 559
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 560
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 561
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 564
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/HomepagePreference;->setVisibleByGoodSettings(Ljava/lang/Boolean;)V

    mul-int/lit8 v4, v4, 0xa

    .line 566
    invoke-virtual {v8, v4}, Lcom/android/settings/widget/HomepagePreference;->setOrderByGoodSettings(I)V

    goto :goto_4

    .line 567
    :cond_8
    sget-object v9, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->SKIPPING_PREFERENCE_KEY_SET:Ljava/util/HashSet;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 569
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v4}, Lcom/android/settings/widget/HomepagePreference;->setVisibleByGoodSettings(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 571
    :cond_9
    instance-of v9, v4, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v9, :cond_7

    .line 573
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "auto_added_footer_preference"

    .line 574
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 575
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->SKIPPING_PREFERENCE_KEY_SET:Ljava/util/HashSet;

    .line 576
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 577
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_4

    .line 583
    :cond_a
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    .line 585
    new-instance v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xf

    .line 587
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 589
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 590
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 596
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isRegularHomepageLayout(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v6, v7

    .line 595
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/settings/homepage/TopLevelSettings;->updateInsetCategoryPreference(Z)V

    const-string v1, "contextual_card"

    .line 600
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_e

    const v2, -0x989680

    .line 602
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 605
    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 607
    invoke-virtual {v1}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 612
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 614
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;-><init>()V

    .line 615
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 616
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method protected createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 0

    .line 845
    new-instance p1, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreference;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public findPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 802
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 809
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 811
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 812
    invoke-virtual {v3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 813
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHighlightMixin()Lcom/android/settings/homepage/TopLevelHighlightMixin;
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    return-object p0
.end method

.method public getHighlightedMenuKey()Ljava/lang/String;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TopLevelSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 162
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    sget p0, Lcom/android/settings/R$xml;->sec_top_level_settings_prokiosk:I

    return p0

    .line 170
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->sec_top_level_settings:I

    return p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->highlightPreferenceIfNeeded()V

    :cond_0
    return-void
.end method

.method public isDuplicateClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 769
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 770
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TopLevelSettings#onAttach"

    .line 187
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getPreferenceScreenResId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/homepage/HighlightableMenu;->fromXml(Landroid/content/Context;I)V

    .line 195
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 627
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setShowingMultiPaneToAdapter(Z)V

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "TopLevelSettings#onCreate"

    .line 278
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_dashboard_tile_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_dashboard_tile_image_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_dashboard_tile_image_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 286
    new-instance v1, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_1

    .line 296
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_1

    .line 299
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    .line 308
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz p1, :cond_3

    const-string v1, "highlight_mixin"

    .line 311
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    .line 312
    invoke-virtual {p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->isActivityEmbedded()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    .line 313
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {p1, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setActivityEmbedded(Z)V

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-nez p1, :cond_4

    .line 316
    new-instance p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-direct {p1, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    .line 320
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2

    .line 835
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsMultiPaneSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_1

    .line 836
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v0, :cond_2

    .line 838
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iget-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCreateAdapter(Lcom/android/settings/homepage/TopLevelSettings;Landroidx/preference/PreferenceScreen;Z)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const-string v0, "TopLevelSettings#onCreatePreferences"

    .line 374
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 376
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p2, "TopLevelSettings#ContextualCard.init"

    .line 388
    invoke-static {p2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 391
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    .line 393
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    .line 396
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V

    .line 398
    new-instance p1, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-direct {p1, p2}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 400
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 401
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 402
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/TopLevelSettings;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V

    .line 405
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 406
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 406
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 408
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHeaderRecyclerView:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(Landroid/view/View;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    const-string p2, "contextual_card"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    const p2, -0xf4240

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 413
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const-string p2, "contextual_card_category"

    .line 414
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 p2, 0x3

    .line 416
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getOrder()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 419
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 422
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 423
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 695
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 697
    iget p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mPaddingHorizontal:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 683
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 684
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/homepage/TopLevelSettings;->enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 686
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 687
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isRegularHomepageLayout(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 686
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/settings/homepage/TopLevelSettings;->updateLayout(Z)V

    return-object p1
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 4

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "TopLevelSettings"

    const-string p1, "it not attached to an activity."

    .line 249
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "need_search_icon_in_action_bar"

    .line 254
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 259
    instance-of v2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v2, :cond_1

    .line 260
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 259
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, -0x1

    .line 262
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 263
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setIsSecondLayerPage(Z)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p2, 0xffff

    invoke-virtual {p0, p1, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->isDuplicateClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerSubSettingsPairRule(Landroid/content/Context;Z)V

    .line 221
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    const-string v0, "TopLevelSettings#onResume"

    .line 435
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 437
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 439
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 366
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    const-string v0, "highlight_mixin"

    .line 367
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSplitLayoutChanged(Z)V
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->updateLayout(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "TopLevelSettings#onStart"

    .line 327
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    goto :goto_0

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isOnlyOneActivityInTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TopLevelSettings"

    const-string v1, "Set default menu key"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 343
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/TopLevelSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 349
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->updatePreferences()V

    .line 353
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public setHighlightMenuKey(Ljava/lang/String;Z)V
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setHighlightMenuKey(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setHighlightMenuTitle(Ljava/lang/String;Z)V
    .locals 0

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->findPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHighlightPreferenceKey(Ljava/lang/String;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "top_level_support"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsMultiPaneSupported:Z

    if-eqz v0, :cond_0

    .line 749
    invoke-static {p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isNeededOpenFullScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 755
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setHighlightPreferenceKey(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMenuHighlightShowed(Z)V
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setMenuHighlightShowed(Z)V

    :cond_0
    return-void
.end method

.method protected shouldForceRoundedIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updatePreferenceStates()V
    .locals 1

    .line 485
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isProKioskSettingsOrNormalSettingsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 491
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
