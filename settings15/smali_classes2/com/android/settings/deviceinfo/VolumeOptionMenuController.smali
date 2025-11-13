.class public final Lcom/android/settings/deviceinfo/VolumeOptionMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;


# instance fields
.field public final mContext:Landroid/content/Context;

.field mForget:Landroid/view/MenuItem;

.field mFormat:Landroid/view/MenuItem;

.field mFormatAsInternal:Landroid/view/MenuItem;

.field mFormatAsPortable:Landroid/view/MenuItem;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field mFree:Landroid/view/MenuItem;

.field mMigrate:Landroid/view/MenuItem;

.field mMount:Landroid/view/MenuItem;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field mRename:Landroid/view/MenuItem;

.field public mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field mUnmount:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-void
.end method


# virtual methods
.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    const p0, 0x7f0f0028

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f0a0f13

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v1, 0x0

    const v4, 0x7f0a0f15

    const/16 v5, 0x2a

    const-string v6, "android.os.storage.extra.VOLUME_ID"

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3

    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f142d7d

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput v5, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v3

    :cond_5
    return v2

    :cond_6
    const v4, 0x7f0a0f14

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "rename"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    :cond_9
    return v2

    :cond_a
    const v4, 0x7f0a0f0e

    if-ne p1, v4, :cond_e

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p0

    instance-of v0, p1, Lcom/android/settings/deviceinfo/StorageWizardInit;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/StorageWizardInit;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Lcom/android/settings/deviceinfo/StorageWizardInit;

    goto :goto_2

    :cond_d
    sput-object v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->mCallerActivity:Lcom/android/settings/deviceinfo/StorageWizardInit;

    :goto_2
    invoke-static {p1, p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V

    return v3

    :cond_e
    const v4, 0x7f0a0f10

    if-ne p1, v4, :cond_11

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f142d73

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput v5, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v3

    :cond_f
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f142da7

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_10
    return v2

    :cond_11
    const v1, 0x7f0a0f0f

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_12
    return v2

    :cond_13
    const v0, 0x7f0a0f12

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_14
    return v2

    :cond_15
    const v0, 0x7f0a0f0d

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return v3

    :cond_16
    return v2
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f0a0f14

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    const v0, 0x7f0a0f13

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    const v0, 0x7f0a0f15

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    const v0, 0x7f0a0f0e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    const v0, 0x7f0a0f10

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    const v0, 0x7f0a0f0f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    const v0, 0x7f0a0f12

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    const v0, 0x7f0a0f11

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFree:Landroid/view/MenuItem;

    const v0, 0x7f0a0f0d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->updateOptionsMenu()V

    return-void
.end method

.method public final updateOptionsMenu()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFree:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFree:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v3, v3, Lcom/android/settings/deviceinfo/storage/StorageEntry;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_7

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    return-void

    :cond_a
    :goto_1
    const-string p0, "VolumeOptionMenuController"

    const-string v0, "Menu items are not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
