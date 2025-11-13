.class public Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;


# static fields
.field static final KEY_HEADER_BUTTONS:Ljava/lang/String; = "header_view"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_PREF_3_2:Ljava/lang/String; = "3_2_pref"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_PREF_DEFAULT:Ljava/lang/String; = "app_default_pref"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_PREF_FULLSCREEN:Ljava/lang/String; = "fullscreen_pref"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAspectRatioPreferences:Ljava/util/List;

.field public mIsOverrideToFullscreenEnabled:Z

.field final mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap;"
        }
    .end annotation
.end field

.field mSelectedKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUserAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    const-string v0, "app_default_pref"

    iput-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mAspectRatioPreferences:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addPreference(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->hasAspectRatioOption(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mUserAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getAccessibleEntry(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioOrder:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iput-object p0, v0, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;->mListener:Lcom/android/settings/applications/appcompat/RadioWithImagePreference$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mAspectRatioPreferences:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mUserAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x806

    return p0
.end method

.method public getSelectedUserMinAspectRatio(Ljava/lang/String;)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_default_pref"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput p1, v0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    const-string v0, "UserAspectRatioDetails"

    if-nez p1, :cond_0

    const-string p0, "package name is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mUserAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isOverrideToFullscreenEnabled(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mIsOverrideToFullscreenEnabled:Z

    const p1, 0x7f170289

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140453

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_aspect_ratio_summary"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "header_view"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1414bd

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)V

    const v1, 0x7f0805fc

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)V

    new-instance v1, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mIsOverrideToFullscreenEnabled:Z

    const/4 v1, 0x0

    const-string v2, "app_default_pref"

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    :goto_0
    const-string p1, "fullscreen_pref"

    const/4 v3, 0x6

    invoke-virtual {p0, v3, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    const-string p1, "display_size_pref"

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    const-string p1, "half_screen_pref"

    const/4 v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    const-string p1, "16_9_pref"

    const/4 v4, 0x4

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    const-string p1, "4_3_pref"

    const/4 v4, 0x3

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    const-string p1, "3_2_pref"

    const/4 v4, 0x5

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->addPreference(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->getAspectRatioManager()Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    move-result-object p1

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    iget-object v6, p1, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4, v5}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v5, v4}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->hasAspectRatioOption(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    iget-object p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v5, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mIsOverrideToFullscreenEnabled:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mKeyToAspectRatioMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "Unable to get user min aspect ratio"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->refreshUi()Z

    return-void
.end method

.method public final refreshUi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mSelectedKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->mAspectRatioPreferences:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appcompat/RadioWithImagePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
