.class Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->loadAnimationResource(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;I)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BluetoothFunctionSettingsBase"

    const-string v1, "loadAnimationResource ::"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;->val$resId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
