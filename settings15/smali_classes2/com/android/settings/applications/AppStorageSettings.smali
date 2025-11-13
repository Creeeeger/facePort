.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks;"
    }
.end annotation


# static fields
.field public static INTERNAL_STORAGE_TEXT:Ljava/lang/String;


# instance fields
.field public mButton1:Landroid/widget/Button;

.field public mButton2:Landroid/widget/Button;

.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field public mCacheCleared:Z

.field public mCanClearData:Z

.field public mCandidates:[Landroid/os/storage/VolumeInfo;

.field public mChangeStorageButton:Landroid/widget/Button;

.field public mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field public mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field public mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

.field public mClearUriButton:Landroid/widget/Button;

.field public mDataCleared:Z

.field public mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field public final mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

.field public mInfo:Landroid/content/pm/ApplicationInfo;

.field mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

.field public mStorageUsed:Landroidx/preference/Preference;

.field public mUri:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static -$$Nest$minitiateClearUserData(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager;->resetDenylistIfNeeded(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Clearing user data for package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppStorageSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v1, v0, v4}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to clear application user data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t clear application user data for package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner$1(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    const v1, 0x7f141e48

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08083b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1422bc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1427cb

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Lcom/android/settings/applications/AppStorageSettings$3;

    return-void
.end method

.method public static setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f140955

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f140950

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    const p0, 0x7f140d33

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f14094e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    const p0, 0x7f140d32

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f140d30

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142d71

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x13

    return p0
.end method

.method public handleClearCacheClick()V
    .locals 4

    const/16 v0, 0x13

    const/16 v1, 0xf18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x36d

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1427ca    # 1.9693234E38f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1427cb

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public handleClearDataClick()V
    .locals 3

    const/16 v0, 0x13

    const/16 v1, 0xf17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner$1(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final initMoveDialog()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const-string v2, "AppStorageSettings"

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "candidates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, "storage_space"

    const-string v7, "change_storage_button"

    const-string v8, "storage_used"

    if-le v4, v5, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    new-array v10, v5, [Landroid/os/storage/VolumeInfo;

    iput-object v10, v0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_4

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v14

    array-length v15, v9

    if-ge v12, v15, :cond_1

    aget-object v15, v9, v12

    const-string v11, "usb"

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "AppStorage is USB"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    sget-object v11, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    sget-object v15, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-interface {v11, v15}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_2
    iget-object v11, v0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    sget-object v15, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-interface {v11, v15}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    :goto_1
    move v10, v12

    :cond_3
    sub-int v11, v12, v13

    aput-object v14, v4, v11

    iget-object v14, v0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/VolumeInfo;

    aput-object v15, v14, v11

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    if-eqz v13, :cond_5

    const-string v1, "only 2 items with USB"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "storage_space_inset_category"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string v1, "storage_category"

    invoke-virtual {v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    return-void

    :cond_5
    const/4 v2, 0x0

    new-array v1, v5, [Ljava/lang/CharSequence;

    move v11, v2

    :goto_3
    if-ge v11, v5, :cond_6

    aget-object v2, v4, v11

    aput-object v2, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f140925

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v2, v1, v10, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f1408bf

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v2, v0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string v0, "initMoveDialog : mAppEntry or mAppEntry.info is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object p2, v1, p2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AppStorageSettings"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "internal storage => external storage"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "external storage => internal storage : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x13

    const/16 v0, 0xf23

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshUi()Z

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateUI()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "cache_cleared"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v0, "data_cleared"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142d87

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1040efc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    const p1, 0x7f170148

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object p2
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshUi()Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-object p1
.end method

.method public final onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    iput-object p2, p1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    return-void
.end method

.method public final onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateUI()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cache_cleared"

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "data_cleared"

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final refreshGrantedUriPermissions()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/GrantedUriPermission;

    iget-object v5, v5, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    if-nez v6, :cond_4

    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v1}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget v5, v6, Landroid/util/MutableInt;->value:I

    add-int/2addr v5, v1

    iput v5, v6, Landroid/util/MutableInt;->value:I

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f14307d

    invoke-static {v1, v2, v5}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f0d08cc

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setOrder(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding preference \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' at order 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppStorageSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final refreshUi()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry$1()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f142d99    # 1.969625E38f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    const v5, 0x7f080837

    const v6, 0x7f140955

    const/4 v7, 0x0

    if-nez v0, :cond_9

    if-nez v3, :cond_a

    :cond_9
    if-nez v4, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v7, v3, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v7, v3, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.themecenter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.samsung.android.localeoverlaymanager"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.wssyncmldm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.ws.dm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.setupwizardlegalprovider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_11
    :goto_7
    return v2
.end method

.method public final setEnabledClearDataBtn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.themecenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.localeoverlaymanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setupViews()V
    .locals 8

    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "data_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    const-string v3, "cache_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/AppStorageSizesController;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;)V

    iput-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string v0, "storage_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    const-string v0, "change_storage_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a028a

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f14091d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v0, "initBottomButtonBar"

    const-string v2, "AppStorageSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0a0299

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0d0850

    invoke-virtual {v4, v6, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070da2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v5, v0, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v0, 0x7f0a0240

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a028b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    const v0, 0x7f0a028e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "initBottomButtonBar buttonBar null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f142d87

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f142826

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    const v2, 0x7f14094c

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080836

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    const-string v0, "uri_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    const-string v2, "clear_uri_button"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v1, 0x7f140954

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppStorageSettings"

    const-string v2, "Could not find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public final updateUI()V
    .locals 12

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSDCardMoveAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "isSDCardMoveAllowed: "

    const-string v2, "AppStorageSettings"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v8, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v10, v11, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v4

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "Could not find package"

    invoke-static {v2, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    iput-boolean v2, v1, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    :cond_1
    iget-boolean v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    iput-boolean v2, v1, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    :cond_2
    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroidx/preference/Preference;

    iget-object v9, v1, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroidx/preference/Preference;

    iget-object v10, v1, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroidx/preference/Preference;

    iget-object v11, v1, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroidx/preference/Preference;

    if-nez v4, :cond_4

    iget-boolean v3, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    if-eqz v3, :cond_3

    iget v1, v1, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    goto :goto_0

    :cond_3
    iget v1, v1, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    :goto_0
    invoke-virtual {v11, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v10, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v9, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_4
    check-cast v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v12

    iget-boolean v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-eqz v4, :cond_5

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    check-cast v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v14

    iget-object v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    check-cast v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v16

    sub-long v14, v14, v16

    :goto_1
    iget-wide v5, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    cmp-long v4, v5, v12

    if-eqz v4, :cond_6

    iput-wide v12, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    invoke-static {v7, v12, v13, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-wide v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    cmp-long v4, v4, v14

    if-eqz v4, :cond_7

    iput-wide v14, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    invoke-static {v7, v14, v15, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-nez v4, :cond_9

    iget-boolean v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    check-cast v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v4, v4, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    goto :goto_3

    :cond_9
    :goto_2
    const-wide/16 v4, 0x0

    :goto_3
    iget-wide v10, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    cmp-long v6, v10, v4

    if-eqz v6, :cond_a

    iput-wide v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    invoke-static {v7, v4, v5, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    add-long/2addr v12, v14

    add-long/2addr v12, v4

    iget-wide v4, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_b

    iput-wide v12, v1, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    invoke-static {v7, v12, v13, v3}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    if-nez p1, :cond_c

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_9

    :cond_c
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;

    iget-object v3, v1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v3

    iget-object v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStatsImpl;->mStats:Landroid/app/usage/StorageStats;

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-lez v1, :cond_e

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    iget-object v1, v0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    const-wide/16 v5, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {v0, v7}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_5

    :goto_7
    cmp-long v1, v3, v5

    if-lez v1, :cond_10

    iget-boolean v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppStorageSettings;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_10
    :goto_8
    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :goto_9
    iget-boolean v1, v0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settingslib/applications/AppUtils;->isMainlineModule(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    invoke-virtual {v0, v7}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v1, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "false"

    filled-new-array {v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v5, "isApplicationClearCacheDisabled"

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_13

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton$1(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_13
    return-void

    :cond_14
    :goto_a
    const-string v0, "AppStorageSettings"

    const-string v1, "updateUiWithSize : mAppEntry or mAppEntry.info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
