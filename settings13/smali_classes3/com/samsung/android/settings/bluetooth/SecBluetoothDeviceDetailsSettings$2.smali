.class Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;
.super Ljava/lang/Object;
.source "SecBluetoothDeviceDetailsSettings.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->initBottomNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 529
    sget v1, Lcom/android/settings/R$id;->unpair_button:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 530
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 533
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_bdsc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 534
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->detail_bluetooth_bdsc_connect_to_unpair:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 538
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_device_profiles_setting_unpair_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BottomNavigationItemSelected:: Unpair to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isConneceted : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncableDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->isSamsungAccountLogged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-static {p1, v2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$mshowUnpairDialog(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;Z)V

    goto/16 :goto_3

    .line 542
    :cond_2
    sget v1, Lcom/android/settings/R$id;->rename_button:I

    if-ne v0, v1, :cond_5

    .line 543
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result p1

    if-nez p1, :cond_4

    .line 545
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$mcanSetRename(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 547
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 548
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RemoteDeviceName"

    .line 547
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_connect_to_rename:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 556
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_rename_tab:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 558
    :cond_5
    sget v1, Lcom/android/settings/R$id;->connect_button:I

    if-ne v0, v1, :cond_8

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "0"

    goto :goto_1

    :cond_6
    const-string v1, "1"

    :goto_1
    if-eqz v0, :cond_7

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->ic_bluetooth_disconnect:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_disconnect:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 565
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_2

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$drawable;->ic_bluetooth_connect:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 568
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->sec_bluetooth_connect:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 569
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithLaunchGM(Ljava/lang/String;ZZ)V

    .line 571
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_connect_button:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 571
    invoke-static {p1, p0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return v3
.end method
