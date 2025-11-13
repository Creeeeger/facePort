.class Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$3;
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

    .line 599
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$3;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 601
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->-$$Nest$sfgetusbTetherController()Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
