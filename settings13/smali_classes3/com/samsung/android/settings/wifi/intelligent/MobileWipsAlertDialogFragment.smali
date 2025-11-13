.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "MobileWipsAlertDialogFragment.java"


# instance fields
.field private final mAlertDialogReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$1JDWcci4gUf0Q1xWlkBSF41YGKI(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQvEdSUyU5VS0LYxqv7OsxX4A_0(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->lambda$onCreateDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 59
    new-instance v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mAlertDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closeDialogWithUserResponse(I)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->createFinishedIntentWithUserResponse(I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.samsung.permission.WIFI_WIPS"

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private createFinishedIntentWithUserResponse(I)Landroid/content/Intent;
    .locals 4

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.intelligent.MOBILE_WIPS_ALERT_DIALOG_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "ssid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "userResponse"

    .line 163
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "MobileWipsAlertDialogFragment"

    const-string p2, "onClick(PositiveButton): Add to exceptions"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->closeDialogWithUserResponse(I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "MobileWipsAlertDialogFragment"

    const-string p3, "onClick(NegativeButton): Disconnect"

    .line 101
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableEphemeralNetwork( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p3, p1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "wifiInfo is null or wifiInfo.getSSID() is null"

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    new-instance p1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 110
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 p1, 0x1

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->closeDialogWithUserResponse(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "MobileWipsAlertDialogFragment"

    const-string v0, "onCancel: Dialog cancel"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->closeDialogWithUserResponse(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detection_popup_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detection_popup_content:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detection_popup_add_to_exceptions:I

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detection_popup_disconnect:I

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 113
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "MobileWipsAlertDialogFragment"

    const-string v0, "onDismiss: Dialog dismissed"

    .line 121
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->closeDialogWithUserResponse(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    const-string v0, "MobileWipsAlertDialogFragment"

    const-string v1, "onStart: Alert dialog start"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mAlertDialogReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.settings.wifi.intelligent.MOBILE_WIPS_ALERT_DIALOG_FINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.permission.WIFI_WIPS"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStop()V

    const-string v0, "MobileWipsAlertDialogFragment"

    const-string v1, "onStop: Alert dialog stop"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mAlertDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "MobileWipsAlertDialogFragment"

    const-string v1, "update: Dialog update intent"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ssid"

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "update: SSID is null"

    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_mobile_wips_detection_popup_content:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
