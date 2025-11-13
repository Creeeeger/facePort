.class public Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppComparator;
    }
.end annotation


# static fields
.field static final IGNORE_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$rXQvuArrh-LwmelrJCoL8xROFDU(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->lambda$onResume$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui"

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->picture_in_picture_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method public static checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 116
    sget-object v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 123
    array-length p0, p1

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 124
    aget-object v2, p1, p0

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onResume$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 209
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p4, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 210
    iget p0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 211
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 210
    invoke-static {p2, p0, p1, p3}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method collectPipApps(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 246
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 250
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 251
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 252
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v3}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    new-instance v2, Landroid/util/Pair;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 262
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v5, v6}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    new-instance v5, Landroid/util/Pair;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x32c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 230
    sget p0, Lcom/android/settings/R$xml;->picture_in_picture_settings:I

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x32d

    goto :goto_0

    :cond_0
    const/16 p1, 0x32e

    :goto_0
    move v2, p1

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->getMetricsCategory()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p2

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    .line 148
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onResume()V
    .locals 11

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 156
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->collectPipApps(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppComparator;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$AppComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$layout;->sec_manage_applications_desc:I

    invoke-direct {v3, v2, v4}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 170
    sget v4, Lcom/android/settings/R$id;->function_desc:I

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->picture_in_picture_app_detail_summary:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 173
    new-instance v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 174
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 175
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 179
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 180
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 181
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 182
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 183
    iget-object v8, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 187
    new-instance v9, Lcom/android/settingslib/widget/AppSwitchPreference;

    invoke-direct {v9, v2}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 189
    iget-object v10, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v10, v5, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 206
    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 207
    iget v3, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v7}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v9, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 208
    new-instance v3, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v7, v2, v5}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 225
    sget p1, Lcom/android/settings/R$string;->picture_in_picture_empty_text:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method
