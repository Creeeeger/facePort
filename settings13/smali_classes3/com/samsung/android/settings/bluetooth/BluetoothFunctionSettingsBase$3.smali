.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 342
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    const-string v0, "onClick :: mDialogCallback is null"

    const-string v1, "BluetoothFunctionSettingsBase"

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 348
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogPositiveClicked()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 355
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;->onDialogNegativeClicked()V

    goto :goto_0

    .line 357
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
