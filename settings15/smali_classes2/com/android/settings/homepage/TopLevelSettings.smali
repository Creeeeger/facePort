.class public Lcom/android/settings/homepage/TopLevelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/SplitLayoutListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

.field public mGoodSettingsSupported:Z

.field public mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

.field public mIsEmbeddingActivityEnabled:Z

.field public mLastUpdated:J

.field public mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

.field public mScrollNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    const-string v1, "TopLevelSettings#Constructor"

    invoke-static {v1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "need_search_icon_in_action_bar"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/TopLevelHighlightMixin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    return-void
.end method

.method public static iteratePreferences(Landroidx/preference/PreferenceGroup;Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;->doForEach(Landroidx/preference/Preference;)V

    instance-of v3, v2, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-static {v2, p1}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Landroidx/preference/PreferenceGroup;Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 0

    new-instance p1, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreference;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public final enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

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

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final findPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TopLevelSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f170201

    return p0

    :cond_0
    const p0, 0x7f170200

    return p0
.end method

.method public final highlightPreferenceIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->requestHighlight$2()V

    :cond_0
    return-void
.end method

.method public isActivityEmbedded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 5

    const-string v0, "TopLevelSettings#onAttach"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getPreferenceScreenResId()I

    move-result p0

    sget-object v0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    const-class v0, Lcom/android/settings/homepage/HighlightableMenu;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/settings/homepage/HighlightableMenu;->sXmlParsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_2

    :cond_0
    :try_start_1
    const-string v1, "HighlightableMenu"

    const-string v2, "parsing highlightable menu from xml"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f170200

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p0

    iget-object v1, p0, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->mTopLevelPreferenceXmlMeta:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->loadTopLevelPreferenceXmlMeta(Landroid/content/Context;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->mTopLevelPreferenceXmlMeta:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0x2002

    :try_start_2
    invoke-static {p1, p0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "highlightable_menu_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "HighlightableMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Highlightable menu requires android:key but it\'s missing in xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_6

    monitor-exit v0

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    :try_start_4
    sput-boolean p0, Lcom/android/settings/homepage/HighlightableMenu;->sXmlParsed:Z

    sget-object p0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_KEY_COMPAT_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/homepage/HighlightableMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/homepage/HighlightableMenu$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "HighlightableMenu"

    const-string v1, "Failed to parse preference xml for getting highlightable menu keys"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "TopLevelSettings#onCreate"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v0

    const-string v1, "feature_is_embedding_activity_enabled"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070a20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10103bd

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070a1f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v3, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080a92

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v0, v5, v4}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/settings/homepage/TopLevelSettings;->mRoundedDecoration:Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result v0

    if-eqz p1, :cond_4

    const-string v3, "highlight_mixin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p1, :cond_4

    iget-boolean v3, p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    iput-boolean v0, p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    :cond_4
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-nez p1, :cond_5

    new-instance p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mActivityEmbedded:Z

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iget-boolean v6, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    iget-object v1, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TopLevelHighlightMixin"

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":settings:fragment_args_title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->findPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Invalid highlight menu key: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid highlight menu title: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Menu key: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Menu title: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v4, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onCreateAdapter, pref key: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v7, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/settings/homepage/SettingsHomepageActivity;

    iget-object v5, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/preference/PreferenceGroup;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;Z)V

    iput-object v7, v0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    return-object v7

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TopLevelSettings#onCreatePreferences"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/homepage/TopLevelSettings;->enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/widget/SecFillBottomItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecFillBottomItemDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-boolean v0, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {p2}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/android/settings/homepage/TopLevelSettings;->updateLayout(Z)V

    return-object p1
.end method

.method public final onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "TopLevelSettings"

    const-string p1, "it not attached to an activity."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {v1, p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-boolean v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mIsSecondLayerPage:Z

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isLaunchModeSingleInstance(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const p2, 0xffff

    :cond_3
    :goto_1
    invoke-static {p0, v0, p2, p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->startActivity(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {v2}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerSubSettingsPairRule(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "TopLevelSettings#onResume"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    const-string v0, "highlight_mixin"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "TopLevelSettings#onStart"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    const-string v0, "TopLevelSettings#updatePreferences"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "TopLevelSettings"

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "[GS]PolicyManager"

    const-string v7, "home_configuration_top_level_preferences"

    invoke-static {v7, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    const-string v10, "String"

    const-string v11, "order"

    if-eqz v8, :cond_3

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v12, v8, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v8, v8, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_e

    :cond_1
    :try_start_0
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    const-class v13, Lcom/google/gson/JsonArray;

    invoke-virtual {v12, v8, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonArray;

    iget-object v8, v8, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    if-gez v12, :cond_2

    const-string v8, "The policy has never been changed in RegiStar."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "failed to convert json to instance : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v6}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    const-string v0, "TopLevelSettings#GoodSettings.policyChanged"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getLastUpdated()J

    move-result-wide v12

    cmp-long v0, v5, v12

    if-eqz v0, :cond_17

    const-string v0, "home configuration\'s policy was updated."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v1, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getLastUpdated()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v9, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x33155f

    if-eq v9, v10, :cond_6

    const v10, 0x302bcfe

    if-eq v9, v10, :cond_5

    goto :goto_2

    :cond_5
    const-string v9, "category"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_6
    const-string v9, "menu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v8, -0x1

    :goto_3
    if-eqz v8, :cond_9

    if-eq v8, v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    const-string v8, "key"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v2

    goto :goto_4

    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;

    invoke-direct {v9, v3, v7}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/Preference;

    instance-of v9, v8, Lcom/android/settings/widget/HomepagePreference;

    if-eqz v9, :cond_10

    move-object v9, v8

    check-cast v9, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonObject;

    const-string v12, "isVisible"

    invoke-virtual {v10, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonObject;

    invoke-virtual {v12, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    invoke-virtual {v9}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v14}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v10, :cond_c

    invoke-virtual {v14}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    :cond_e
    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_8
    mul-int/lit8 v12, v12, 0xa

    invoke-virtual {v9}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v9}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mOrder:Ljava/util/Optional;

    invoke-virtual {v9, v12}, Lcom/android/settings/widget/HomepagePreference;->setOrder(I)V

    goto :goto_9

    :cond_f
    sget-object v3, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->SKIPPING_PREFERENCE_KEY_SET:Ljava/util/HashSet;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v3}, Lcom/android/settings/widget/HomepagePreference;->setVisibleByGoodSettings(Ljava/lang/Boolean;)V

    goto :goto_9

    :cond_10
    instance-of v3, v8, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_11

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v9, "auto_added_footer_preference"

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->SKIPPING_PREFERENCE_KEY_SET:Ljava/util/HashSet;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_11
    :goto_9
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_13

    new-instance v5, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_a

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-boolean v3, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    xor-int/2addr v0, v2

    new-instance v2, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    invoke-static {v0, v2}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Landroidx/preference/PreferenceGroup;Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    :goto_b
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_17
    const-string v0, "home configuration\'s policy wasn\'t updated."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_d
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    goto :goto_f

    :cond_19
    :goto_e
    iget-boolean v0, v1, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/homepage/TopLevelSettings;->mGoodSettingsSupported:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/settings/homepage/TopLevelSettings;->mLastUpdated:J

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/homepage/TopLevelSettings;->updatePreferenceStates()V

    :cond_1a
    :goto_f
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final setHighlightMenuKey(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    sget-object v0, Lcom/android/settings/homepage/HighlightableMenu;->MENU_TO_PREFERENCE_KEY_MAP:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TopLevelHighlightMixin"

    if-eqz v1, :cond_2

    const-string p0, "Invalid highlight menu key: "

    invoke-static {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Menu key: "

    invoke-static {v1, p1, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setHighlightPreferenceKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_2

    const-string v0, "top_level_support"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "my_files_menu"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mPreviousKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final setMenuHighlightShowed(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    :cond_2
    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mHiddenKey:Ljava/lang/String;

    :cond_4
    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mTopLevelAdapter:Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelHighlightMixin;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/widget/HighlightableTopLevelPreferenceAdapter;->highlightPreference(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final shouldForceRoundedIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updateLayout(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz p1, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->enableDividerItemDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->seslSetRoundedCorner(Z)V

    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2, v1}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Landroidx/preference/PreferenceGroup;Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605b2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x1010038

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0605b0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_2
    new-instance v2, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p0, v2}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Landroidx/preference/PreferenceGroup;Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    :goto_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method

.method public final updatePreferenceStates()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_4

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4

    :cond_2
    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_3

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "KnoxUtils"

    const-string v1, "No Settings features Available, finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
