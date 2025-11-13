.class Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog$1;
.super Ljava/lang/Object;
.source "SecBluetoothTetherPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 691
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->-$$Nest$sfgetbtcontroller()Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
