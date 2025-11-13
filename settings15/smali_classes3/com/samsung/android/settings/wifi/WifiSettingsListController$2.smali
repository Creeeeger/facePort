.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checkedBackup:[Z

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->items:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Choose what to show"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;I)V

    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;I)V

    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    const-string p1, "WifiSettings.VI"

    const-string v0, "onClick refresh icon "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->setEnableRefreshLayout(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mWifiTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->semForceScan()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->getSecScannerIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "0106"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No activity found : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings.VI"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
