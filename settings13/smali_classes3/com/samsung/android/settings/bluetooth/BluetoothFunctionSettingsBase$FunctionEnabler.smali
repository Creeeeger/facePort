.class public Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;
.super Ljava/lang/Object;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FunctionEnabler"
.end annotation


# instance fields
.field private isSwitchListenerRegistered:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->isSwitchListenerRegistered:Z

    .line 243
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->switchStateChange(Z)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const-string v1, "BluetoothFunctionSettingsBase"

    if-eqz v0, :cond_1

    .line 277
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->isSwitchListenerRegistered:Z

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->isSwitchListenerRegistered:Z

    goto :goto_0

    :cond_0
    const-string p0, "pause :: Switch change listener is not registered"

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "pause :: mSwitchBar is null"

    .line 284
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const-string v1, "BluetoothFunctionSettingsBase"

    if-eqz v0, :cond_1

    .line 264
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->isSwitchListenerRegistered:Z

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->isSwitchListenerRegistered:Z

    goto :goto_0

    :cond_0
    const-string p0, "resume :: Switch change listener is already registered"

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "resume :: mSwitchBar is null"

    .line 271
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string p1, "setChecked :: mSwitchBar is null"

    .line 292
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCheckedWithoutCallback(Z)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->pause()V

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string v0, "setupSwitchBar :: mSwitchBar is null"

    .line 250
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string v0, "teardownSwitchBar :: mSwitchBar is null"

    .line 258
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
