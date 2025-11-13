.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$4;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$4;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checkedBackup:[Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
