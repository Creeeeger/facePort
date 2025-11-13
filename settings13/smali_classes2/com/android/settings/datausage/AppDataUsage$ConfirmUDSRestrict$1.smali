.class Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;->this$0:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1226
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v0, "UDS"

    .line 1227
    invoke-static {p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$smgetSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    .line 1228
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1230
    :cond_0
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.uds"

    const-string v1, "com.samsung.android.uds.ui.datausage.DatausageActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1233
    :goto_0
    sget-object p2, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v0, "app_pkg"

    .line 1234
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;->this$0:Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
