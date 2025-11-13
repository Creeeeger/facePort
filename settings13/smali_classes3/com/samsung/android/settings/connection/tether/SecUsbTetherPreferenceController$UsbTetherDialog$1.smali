.class Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$1;
.super Ljava/lang/Object;
.source "SecUsbTetherPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 586
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->-$$Nest$sfgetusbTetherController()Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->-$$Nest$sfgetusbTetherController()Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method
