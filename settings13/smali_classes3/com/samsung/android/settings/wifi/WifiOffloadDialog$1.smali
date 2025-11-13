.class Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void
.end method

.method public onDoNotShowAgain()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offload_network_notify"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void
.end method

.method public onRemindMeLater()V
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void
.end method
