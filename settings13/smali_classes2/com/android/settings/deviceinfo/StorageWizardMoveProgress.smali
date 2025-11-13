.class public Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method public static synthetic $r8$lambda$eRgsAz-qRHrazmI27Iw5rBCanFc(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->lambda$moveStatusToMessage$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoveId(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mmoveStatusToMessage(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->moveStatusToMessage(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method private synthetic lambda$moveStatusToMessage$0()Ljava/lang/String;
    .locals 1

    .line 108
    sget v0, Lcom/android/settings/R$string;->move_error_device_admin:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private moveStatusToMessage(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, -0x8

    if-eq p1, v0, :cond_4

    const/4 v0, -0x5

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 117
    sget p1, Lcom/android/settings/R$string;->insufficient_storage:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    sget p1, Lcom/android/settings/R$string;->insufficient_storage:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_1
    sget p1, Lcom/android/settings/R$string;->does_not_exist:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_2
    sget p1, Lcom/android/settings/R$string;->system_package:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3
    sget p1, Lcom/android/settings/R$string;->invalid_location:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_4
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    const-string p0, "Settings.ERROR_MOVE_DEVICE_ADMIN"

    .line 107
    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 48
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->storage_wizard_progress:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 54
    sget v1, Lcom/android/settings/R$drawable;->ic_swap_horiz:I

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    .line 58
    sget v1, Lcom/android/settings/R$string;->storage_wizard_move_progress_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    .line 60
    sget v1, Lcom/android/settings/R$string;->storage_wizard_move_progress_body:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonVisibility(I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result p0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    return-void
.end method
