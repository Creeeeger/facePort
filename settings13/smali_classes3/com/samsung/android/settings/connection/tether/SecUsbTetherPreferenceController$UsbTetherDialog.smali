.class public Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecUsbTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbTetherDialog"
.end annotation


# static fields
.field private static usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;


# instance fields
.field private dialogId:I


# direct methods
.method public static synthetic $r8$lambda$HIfriXFUTr_55HYSDsLA2kh-ddg(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->lambda$onCreateDialog$0(Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDSdg63Fl18UWMzw03aRZYvYvXo(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetusbTetherController()Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private goToTetheringHelp()V
    .locals 5

    const/4 v0, 0x5

    .line 653
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.helphub"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.samsung.helphub.HELP"

    if-eqz v1, :cond_2

    .line 657
    :try_start_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 658
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "helphub:section"

    if-nez v2, :cond_1

    :try_start_2
    const-string v2, "tethering_tmo"

    .line 660
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "tethering_mtr"

    .line 662
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 665
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 666
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:appid"

    const-string v3, "tethering"

    .line 667
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 670
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "help == null"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$mshowDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 674
    :catch_0
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Exception!! help NameNotFoundException"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$mshowDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 627
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const-string p3, "pref_dns_first_usb_tether_dialog"

    .line 626
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 629
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$mshowDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->goToTetheringHelp()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;
    .locals 2

    if-nez p0, :cond_0

    .line 533
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fragment is not ready"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 537
    :cond_0
    sput-object p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    .line 538
    new-instance p1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    invoke-direct {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;-><init>()V

    .line 539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_id"

    .line 540
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 542
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "usb_tether_dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .locals 8

    .line 680
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 685
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html/%y%z/tethering_help.html"

    const-string v4, "%y"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "%z"

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 690
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 696
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 700
    throw p0

    :catch_1
    move v1, v3

    .line 701
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v7, "html/%y%z/tethering_%xhelp.html"

    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    if-eqz v1, :cond_1

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 704
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "tethering"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    .line 705
    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uRegexs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", wRegexs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    array-length v5, v2

    const-string v6, "%x"

    if-eqz v5, :cond_3

    array-length v5, v1

    if-nez v5, :cond_3

    .line 709
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "usb_mtr_"

    .line 710
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v1, "usb_tmo_"

    .line 712
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 714
    :cond_3
    array-length v5, v1

    if-eqz v5, :cond_4

    array-length v5, v2

    if-nez v5, :cond_4

    const-string v1, "wifi_"

    .line 715
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 716
    :cond_4
    array-length v2, v2

    if-eqz v2, :cond_6

    array-length v1, v1

    if-eqz v1, :cond_6

    .line 717
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "usb_wifi_mtr_"

    .line 718
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "usb_wifi_tmo_"

    .line 720
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 723
    :cond_6
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 725
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering Help url : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 729
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 730
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 732
    :goto_3
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 733
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 735
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 743
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 749
    :catch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 750
    sget v3, Lcom/android/settings/R$layout;->sec_dialog_first_time_tether:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 751
    sget v1, Lcom/android/settings/R$id;->dns_check_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v3, 0x8

    .line 752
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 753
    sget v1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 754
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 757
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->help_label:I

    .line 758
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 759
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$5;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 764
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v0, v1

    .line 738
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_8

    .line 743
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_8
    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 747
    :catch_6
    :cond_9
    throw p0
.end method


# virtual methods
.method public getDialogId()I
    .locals 0

    .line 549
    iget p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->dialogId:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 554
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog_id"

    .line 556
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->dialogId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 570
    iget p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->dialogId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 571
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    sget v0, Lcom/android/settings/R$string;->usc_dialog_tethering_warning_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 574
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 575
    sget v1, Lcom/android/settings/R$string;->usc_dialog_tethering_warning_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_alert_dialog_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_usb_tethering_dialog_padding_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_usb_tethering_dialog_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_usb_tethering_dialog_padding_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_usb_tethering_dialog_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 577
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 580
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 581
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 583
    sget v0, Lcom/android/settings/R$string;->dialog_hotspot_button_accept:I

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$1;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 590
    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$2;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 597
    sget p1, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result p1

    .line 598
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$3;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V

    .line 599
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->tether_settings_title_usb:I

    .line 603
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 606
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->usb_tether_dialog_wfc_warning:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$4;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V

    .line 607
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->tethering_attention_title:I

    .line 611
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 613
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "TetherPref"

    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 615
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 616
    sget v2, Lcom/android/settings/R$layout;->sec_dialog_first_time_tether:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 617
    sget v1, Lcom/android/settings/R$id;->dns_check_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 618
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 619
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->first_use_usb_tether_msg:I

    .line 621
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->first_use_tether_title:I

    .line 623
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 624
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    .line 625
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda1;-><init>()V

    .line 634
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 639
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 561
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 562
    iget p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->dialogId:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    .line 563
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 564
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->usbTetherController:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    :cond_0
    return-void
.end method
