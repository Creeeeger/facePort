.class public Lcom/samsung/android/settings/display/CameraCutoutFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppLabelCache:Ljava/util/HashMap;

.field public mAppNestedView:Landroidx/core/widget/NestedScrollView;

.field public mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mEmptyViewText:Landroid/widget/TextView;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mHandler:Landroid/os/Handler;

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mLoadingPanel:Landroid/view/View;

.field public final mPackageList:Ljava/util/List;

.field public final mPackageListTemp:Ljava/util/List;

.field public mPreviewImageLayout:Landroid/view/View;

.field public mResultList:Ljava/util/List;

.field public final mRows:Landroid/util/ArrayMap;

.field public mSearchMenu:Landroid/view/MenuItem;

.field public mUserInfo:Landroid/content/pm/SemUserInfo;


# direct methods
.method public static -$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CameraCutoutFragment"

    const-string v1, "label not empty => row.mLabel =  "

    const-string v2, "label empty => row.mLabel =  "

    new-instance v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    invoke-direct {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;-><init>()V

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p3, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_0

    const-string p3, "mAppLabelCache EMPTY"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error loading application label for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    :goto_3
    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AppLable is still empty, set packageName = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iput-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    :cond_3
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f0d0bd5

    invoke-direct {p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    iput-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f141049

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f141033

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f141035

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {p0}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string p3, "getCameraCutoutPackage() : "

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for user: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move v1, p2

    :catch_2
    const-string p0, "getCameraCutoutPackage() RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput v1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    iget-object p0, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object p1, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget p0, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    iget-object p0, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    if-ne p0, p2, :cond_5

    iget-object p0, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_5
    iget-object p0, v3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    return-object v3
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mResultList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPackageListTemp:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f14102c

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xbb82

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/SemUserInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheManager;->getAppLabelCache(Landroidx/fragment/app/FragmentActivity;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppLabelCache:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f14102c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0017

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0d29

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06067c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0d36

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1420c7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-interface {p2, v0}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d0856

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0d5b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v1, 0xf

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const v2, 0x7f060738

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p3, v1, v3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v3, 0x1

    iput-boolean v3, p3, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p3

    iget-object v4, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v4, p3, v0, p3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/high16 v4, 0x2000000

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    const p3, 0x7f0a0117

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/core/widget/NestedScrollView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p3, v1, v3}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const p3, 0x7f070c03

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v3, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p3, v1, v3}, Landroid/widget/FrameLayout;->semSetRoundedCorners(ILandroid/util/Pair;)V

    const p3, 0x7f070bda

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v1, 0x7f070bd9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    add-int/2addr v1, p3

    iput p3, v3, Landroidx/core/widget/NestedScrollView;->mScrollbarTopPadding:I

    iput v1, v3, Landroidx/core/widget/NestedScrollView;->mScrollbarBottomPadding:I

    invoke-static {v3, p3}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarTopPadding(Landroid/view/View;I)V

    iget p3, v3, Landroidx/core/widget/NestedScrollView;->mScrollbarBottomPadding:I

    invoke-static {v3, p3}, Landroidx/reflect/view/SeslViewReflector;->semSetScrollBarBottomPadding(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v1, 0x7f0a0068

    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string/jumbo v0, "userInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/content/pm/SemUserInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    :cond_0
    const p3, 0x1020004

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    const p3, 0x7f0a08df

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mLoadingPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->updateEmptyTextViewState()V

    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "userInfo"

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mUserInfo:Landroid/content/pm/SemUserInfo;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final updateEmptyTextViewState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    const v2, 0x7f141a3d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
