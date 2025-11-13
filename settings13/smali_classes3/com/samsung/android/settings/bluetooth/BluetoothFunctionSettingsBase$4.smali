.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 369
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogCanceled()V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string p1, "onCancel :: mDialogCallback is null"

    .line 372
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
