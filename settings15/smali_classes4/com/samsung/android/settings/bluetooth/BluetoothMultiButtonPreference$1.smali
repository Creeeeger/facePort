.class public final Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;
.super Ljava/lang/Thread;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "BluetoothMultiButtonPreference"

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/16 v3, 0xc8

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBottomLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-gt v1, v3, :cond_2

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "mCustomView is abnormal and the waiting counter has exceeded 4000 ms."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    iget-object v4, v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_4

    if-gt v1, v3, :cond_4

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Error on updateMidBarSize Thread"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateMidBarSizeFlag:Z

    :cond_4
    :goto_1
    return-void
.end method
