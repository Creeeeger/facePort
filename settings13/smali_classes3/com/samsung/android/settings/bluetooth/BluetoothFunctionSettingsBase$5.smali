.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 377
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->-$$Nest$fputmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;)V

    return-void
.end method
