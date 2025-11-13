.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBack:Lcom/google/android/setupcompat/template/FooterButton;

.field public mDisk:Landroid/os/storage/DiskInfo;

.field public mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field public mNext:Lcom/google/android/setupcompat/template/FooterButton;

.field public mStorage:Landroid/os/storage/StorageManager;

.field public final mStorageListener:Lcom/android/settings/deviceinfo/StorageWizardBase$1;

.field public mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    return-void
.end method

.method public static copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    return-object v1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing mounted volume of type 1 hosted by disk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; trying again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageWizardBase"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final getDiskDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f14302c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getDiskShortDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f14302c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0a0e24

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method public final onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f15037d

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    const v4, 0x7f150493

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/setupdesign/util/ThemeResolver;

    invoke-direct {v3, v4, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(IZ)V

    sput-object v3, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    :cond_0
    sget-object v3, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    iget v3, v3, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    const-string v6, "suwDefaultThemeString"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7, v6, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sput-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    const-string v3, "PartnerConfigHelper"

    const-string v6, "SetupWizard default theme status unknown; return as null."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->suwDefaultThemeBundle:Landroid/os/Bundle;

    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v3

    const v6, 0x7f15049c

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_1

    :cond_5
    const v3, 0x7f15049d

    :goto_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v1

    if-eqz v7, :cond_10

    if-nez v8, :cond_10

    if-eqz v5, :cond_11

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v8, "glif_light"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "material"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "glif_v4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x7

    goto :goto_2

    :sswitch_3
    const-string v8, "glif_v3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_4
    const-string v8, "glif_v2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_5
    const-string v8, "glif"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_6
    const-string v8, "glif_v4_light"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_7
    const-string v8, "glif_v3_light"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_8
    const-string v8, "material_light"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    move v7, v1

    goto :goto_2

    :sswitch_9
    const-string v8, "glif_v2_light"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_2

    :cond_f
    move v7, v0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v0, v4

    goto :goto_3

    :pswitch_1
    move v0, v6

    goto :goto_3

    :pswitch_2
    const v0, 0x7f150499

    goto :goto_3

    :pswitch_3
    const v0, 0x7f15049f

    goto :goto_3

    :pswitch_4
    const v0, 0x7f150496

    goto :goto_3

    :cond_10
    invoke-static {v5}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    move-result v0

    :cond_11
    :goto_3
    if-nez v0, :cond_12

    if-nez v0, :cond_12

    goto :goto_4

    :cond_12
    move v3, v0

    :goto_4
    new-instance v0, Lcom/google/android/setupdesign/util/ThemeResolver;

    invoke-direct {v0, v3, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(IZ)V

    xor-int/2addr v1, v2

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_5

    :cond_14
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    :cond_15
    :goto_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setAuxChecklist()V
    .locals 4

    const v0, 0x7f0a0f16

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0b51

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0a0f1d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f142db6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setBodyText(I[Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a0f17

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final varargs setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a0f17

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v0, 0x7f1437c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardBase$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const v3, 0x7f15045e

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, v2, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v0, 0x7f1437c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardBase$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, 0x5

    const v4, 0x7f15045d

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, p1, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object p1, p1, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    const p1, 0x10805b9

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    return-void
.end method

.method public final setCurrentProgress(I)V
    .locals 5

    const v0, 0x7f0a0f1e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0a0f1f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setHeaderText(I[Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/template/HeaderMixin;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0606ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final varargs setNextButtonText(I[Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_forget_uuid"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_private"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_slow"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "migrate_skip"

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
