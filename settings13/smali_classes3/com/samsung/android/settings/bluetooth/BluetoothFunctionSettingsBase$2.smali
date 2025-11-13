.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;
.super Landroid/os/Handler;
.source "BluetoothFunctionSettingsBase.java"


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

    .line 225
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 228
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->updateContentsView()V

    :cond_1
    :goto_0
    return-void
.end method
