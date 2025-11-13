.class public Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecSoundWorkSettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifyWorkDialogFragment"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$5F1iywYcmQgMQjh5qVBBgN77drM(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;->lambda$onCreateDialog$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RiLO7kpLqNxwT-JKV1Y4lgDCg9w(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;->lambda$onCreateDialog$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 377
    sget v0, Lcom/android/settings/R$string;->sec_work_sync_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 380
    sget v0, Lcom/android/settings/R$string;->sec_work_sync_dialog_message:I

    .line 381
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->sec_sound_work_personal_profile:I

    .line 382
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 380
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static show(Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;)V
    .locals 4

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnifyWorkDialogFragment"

    .line 355
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    new-instance v2, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;-><init>()V

    const/16 v3, 0xc8

    .line 357
    invoke-virtual {v2, p0, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 358
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x229

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->enableWorkSync()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 371
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 374
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v4, "Settings.ENABLE_WORK_PROFILE_SYNC_WITH_PERSONAL_SOUNDS_DIALOG_TITLE"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string p1, "Settings.ENABLE_WORK_PROFILE_SYNC_WITH_PERSONAL_SOUNDS_DIALOG_MESSAGE"

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->work_sync_dialog_yes:I

    .line 383
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040009

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 386
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
