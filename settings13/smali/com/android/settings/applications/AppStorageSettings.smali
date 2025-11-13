.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;"
    }
.end annotation


# static fields
.field private static INTERNAL_STORAGE_TEXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mCacheCleared:Z

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mDataCleared:Z

.field private mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

.field private mStorageUsed:Landroidx/preference/Preference;

.field private mUri:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$RVEy7J_u_oqQdFAAXhC6n_fm5KY(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->lambda$updateUiWithSize$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgUQv9Iiucv_n9rE3dJ3UaYOpvI(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->lambda$initDataButtons$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wR_WQx2BPxRgp8rMHVUXKK95rK0(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->lambda$updateUiWithSize$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCacheCleared(Lcom/android/settings/applications/AppStorageSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataCleared(Lcom/android/settings/applications/AppStorageSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitiateClearUserData(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessClearMsg(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabledClearDataBtn(Lcom/android/settings/applications/AppStorageSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSize(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    .line 886
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearUriPermissions()V
    .locals 3

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "activity"

    .line 717
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 719
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    return-void
.end method

.method private getStorageType()Ljava/lang/CharSequence;
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->storage_type_external:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 975
    :cond_0
    sget-object p0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-object p0
.end method

.method private initBottomButtonBar()V
    .locals 7

    .line 987
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v1, "initBottomButtonBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 989
    sget v2, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 992
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 993
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_bottom_bar_preference:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 994
    sget v3, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 995
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    sget v3, Lcom/android/settings/R$id;->button1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 997
    sget v3, Lcom/android/settings/R$id;->button2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    .line 998
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 999
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1001
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1002
    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "initBottomButtonBar buttonBar null"

    .line 1004
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initDataButtons()V
    .locals 7

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .line 396
    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    .line 400
    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 402
    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    const/4 v4, 0x0

    if-nez v0, :cond_7

    if-nez v3, :cond_8

    :cond_7
    if-nez v1, :cond_9

    .line 410
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_clear_storage:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 414
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 421
    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->manage_space_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_manage_storage:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 433
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_clear_storage:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 441
    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    :goto_6
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_b

    .line 450
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_7

    .line 451
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.themecenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.localeoverlaymanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 452
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 454
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ws.dm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 455
    :cond_e
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 461
    :cond_f
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.setupwizardlegalprovider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 462
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_10
    return-void
.end method

.method private initMoveDialog()V
    .locals 15

    .line 472
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 478
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 480
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 481
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 484
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "candidates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v3, "storage_space"

    const-string v4, "change_storage_button"

    const-string/jumbo v5, "storage_used"

    const/4 v6, 0x1

    if-le v2, v6, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_7

    .line 491
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 493
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 497
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 498
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 499
    new-array v8, v6, [Landroid/os/storage/VolumeInfo;

    iput-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    .line 500
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_4

    .line 501
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v12}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v12

    .line 502
    array-length v13, v7

    if-ge v10, v13, :cond_1

    .line 503
    aget-object v13, v7, v10

    .line 504
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "usb"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 505
    sget-object v12, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v13, "AppStorage is USB"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 511
    :cond_1
    sget-object v13, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 512
    iget-object v13, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_1

    .line 515
    :cond_2
    iget-object v13, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    :goto_1
    move v8, v10

    :cond_3
    sub-int v13, v10, v11

    .line 518
    aput-object v12, v2, v13

    .line 519
    iget-object v12, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    aput-object v14, v12, v13

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 521
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-eqz v11, :cond_5

    .line 522
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v1, "only 2 items with USB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 524
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 525
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "storage_space_inset_category"

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const-string/jumbo v0, "storage_category"

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    return-void

    .line 530
    :cond_5
    new-array v0, v6, [Ljava/lang/CharSequence;

    :goto_3
    if-ge v9, v6, :cond_6

    .line 532
    aget-object v1, v2, v9

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 534
    :cond_6
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->change_storage:I

    .line 535
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 536
    invoke-virtual {v1, v0, v8, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->cancel:I

    const/4 v2, 0x0

    .line 537
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 553
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 554
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 555
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_4
    return-void

    .line 474
    :cond_8
    :goto_5
    sget-object p0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v0, "initMoveDialog : mAppEntry or mAppEntry.info is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initiateClearUserData()V
    .locals 6

    .line 564
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 566
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 572
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 580
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 582
    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear application user data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 586
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 587
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner(II)V

    goto :goto_1

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->recompute_size:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 592
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->sec_app_info_button_manage_storage:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x0

    .line 591
    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method private isApplicationClearCacheDisabledByMDM()Z
    .locals 5

    .line 1021
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1023
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 1025
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    const-string v4, "false"

    aput-object v4, v2, p0

    const-string p0, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v4, "isApplicationClearCacheDisabled"

    .line 1027
    invoke-static {v1, p0, v4, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, v0, :cond_0

    move v3, v0

    :cond_0
    return v3
.end method

.method private isMoveInProgress()Z
    .locals 2

    .line 308
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 309
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 308
    invoke-interface {v0, p0, v1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSDcardMoveAvailable()Z
    .locals 9

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 931
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 932
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 934
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 936
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 937
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 939
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v7, v8, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v6

    .line 942
    sget-object v7, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v8, "Could not find package"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private synthetic lambda$initDataButtons$0(Landroid/view/View;)V
    .locals 0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method private synthetic lambda$updateUiWithSize$2(Landroid/view/View;)V
    .locals 0

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method private synthetic lambda$updateUiWithSize$4(Landroid/view/View;)V
    .locals 0

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearCacheClick()V

    return-void
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5

    .line 604
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 605
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 607
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_app_info_button_clear_storage:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 608
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 616
    sget-object p1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.universalswitch"

    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.universalSwitch.CLEARDATA_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "Sending Broadcast to Universal Switch"

    .line 621
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "com.samsung.android.permission.universalSwitch_CLEARDATA"

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const-string v2, "com.samsung.hongbaoassistant"

    .line 625
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hongbao_assistant"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    .line 628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    .line 629
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 632
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHongbaoAssistantOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Restart HongbaoAssistant if true."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    goto :goto_1

    .line 638
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :goto_1
    return-void
.end method

.method private refreshButtons()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 386
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 9

    .line 647
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 652
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 653
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 659
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 667
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 668
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/GrantedUriPermission;

    .line 669
    iget-object v4, v4, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 676
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    if-nez v6, :cond_2

    .line 678
    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v5}, Landroid/util/MutableInt;-><init>(I)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 680
    :cond_2
    iget v4, v6, Landroid/util/MutableInt;->value:I

    add-int/2addr v4, v5

    iput v4, v6, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 686
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    iget v3, v3, Landroid/util/MutableInt;->value:I

    .line 688
    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$plurals;->uri_permissions_text:I

    new-array v7, v5, [Ljava/lang/Object;

    .line 692
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 691
    invoke-virtual {v1, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 695
    sget v1, Lcom/android/settings/R$layout;->sec_horizontal_preference:I

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 699
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 700
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding preference \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' at order "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 704
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_5

    .line 705
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 709
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private removeUriPermissionsFromUi()V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    if-eq v1, v2, :cond_0

    .line 731
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .locals 0

    .line 1009
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1010
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private setEnabledClearDataBtn(Z)V
    .locals 2

    .line 980
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

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    return-void

    .line 981
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    return-void
.end method

.method private setupViews()V
    .locals 6

    .line 206
    new-instance v0, Lcom/android/settings/applications/AppStorageSizesController$Builder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;-><init>()V

    const-string/jumbo v1, "total_size"

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setTotalSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "app_size"

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setAppSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "data_size"

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setDataSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "cache_size"

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setCacheSizePreference(Landroidx/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->computing_size:I

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->invalid_size_value:I

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->build()Lcom/android/settings/applications/AppStorageSizesController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    const-string v0, "header_view"

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string/jumbo v0, "storage_used"

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    const-string v0, "change_storage_button"

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 219
    sget v1, Lcom/android/settings/R$id;->button:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 220
    sget v1, Lcom/android/settings/R$string;->change:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initBottomButtonBar()V

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_used_template:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->clear_cache_btn_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_app_info_button_clear:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "uri_category"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroidx/preference/PreferenceCategory;

    const-string v1, "clear_uri_button"

    .line 245
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settingslib/widget/LayoutPreference;

    .line 246
    sget v1, Lcom/android/settings/R$id;->button:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    .line 247
    sget v1, Lcom/android/settings/R$string;->clear_uri_btn_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSize()V
    .locals 3

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 798
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

    .line 800
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v2, "Could not find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-object v0

    .line 755
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 757
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->clear_failed_dlg_text:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 758
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 769
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 740
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->clear_data_dlg_text:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->dlg_delete:I

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 745
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    .line 752
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 753
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 1015
    sget p0, Lcom/android/settings/R$string;->storage_label:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x13

    return p0
.end method

.method handleClearCacheClick()V
    .locals 4

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xf18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 257
    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x36d

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method handleClearDataClick()V
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xf17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 274
    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 277
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 281
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 963
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 965
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 966
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object p2, v1, p2

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 327
    invoke-virtual {v1, p2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v3, "internal storage => external storage"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external storage => internal storage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 345
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 358
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0xf23

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 294
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 296
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez p1, :cond_1

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 297
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "cache_cleared"

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v0, "data_cleared"

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    .line 169
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    .line 173
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1040dda

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    .line 175
    sget p1, Lcom/android/settings/R$xml;->sec_app_storage_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 781
    new-instance p2, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    .line 782
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 953
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 954
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    .line 955
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshUi()Z

    const/4 p2, 0x0

    .line 957
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    .line 787
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/AppStorageSizesController;->setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 788
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStorageSettings;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 185
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    const-string v0, "false"

    .line 187
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSDCardMoveAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSDCardMoveAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isSDcardMoveAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v1, "cache_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    iget-boolean p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    const-string v0, "data_cleared"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected refreshUi()Z
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController;->getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->getStorageType()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 376
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    const/4 p0, 0x1

    return p0
.end method

.method updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 7

    .line 812
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 818
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setCacheCleared(Z)V

    .line 821
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setDataCleared(Z)V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->updateUi(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 829
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 830
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 835
    :cond_3
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v1

    .line 836
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    .line 838
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz p1, :cond_4

    goto :goto_0

    .line 846
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 847
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton1:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 840
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :goto_1
    cmp-long p1, v1, v5

    if-lez p1, :cond_7

    .line 853
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-eqz p1, :cond_6

    goto :goto_2

    .line 861
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 862
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 855
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 869
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/settingslib/applications/AppUtils;->isMainlineModule(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 871
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    .line 872
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    .line 879
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isApplicationClearCacheDisabledByMDM()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 880
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButton2:Landroid/widget/Button;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnableButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_a
    return-void

    .line 814
    :cond_b
    :goto_4
    sget-object p0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateUiWithSize : mAppEntry or mAppEntry.info is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
