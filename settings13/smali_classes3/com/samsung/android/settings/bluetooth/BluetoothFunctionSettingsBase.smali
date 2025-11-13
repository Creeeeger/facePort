.class public abstract Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BluetoothFunctionSettingsBase.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;,
        Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field protected final KEY_DIALOG_BODY:Ljava/lang/String;

.field protected final KEY_DIALOG_NEG:Ljava/lang/String;

.field protected final KEY_DIALOG_POS:Ljava/lang/String;

.field protected final KEY_DIALOG_TITLE:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field protected mAnimResource:Landroid/graphics/drawable/Drawable;

.field public mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialogCallback:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

.field mHandler:Landroid/os/Handler;

.field protected mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogCallback:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialogCallback(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogCallback:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const-string v0, "title"

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->KEY_DIALOG_TITLE:Ljava/lang/String;

    const-string v0, "body"

    .line 61
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->KEY_DIALOG_BODY:Ljava/lang/String;

    const-string v0, "pos_button"

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->KEY_DIALOG_POS:Ljava/lang/String;

    const-string v0, "neg_button"

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->KEY_DIALOG_NEG:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mHandler:Landroid/os/Handler;

    .line 342
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 366
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 377
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method abstract bluetoothStateChanged(I)V
.end method

.method abstract connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public dismissDialog()V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public launchDialog(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;Landroid/os/Bundle;)V
    .locals 3

    .line 322
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogCallback:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "body"

    .line 325
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "pos_button"

    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string p1, "neg_button"

    .line 331
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 336
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 p2, 0x1

    .line 338
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public loadAnimationResource(I)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 81
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getDivider()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/android/settings/widget/SwitchBar;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setupSwitchBar()V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged :: state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothFunctionSettingsBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->bluetoothStateChanged(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BluetoothFunctionSettingsBase"

    const-string v1, "onConfigurationChanged :: "

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 123
    sget p1, Lcom/android/settings/R$layout;->sec_bluetooth_function_settings_content_land:I

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 125
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->sec_bluetooth_function_settings_content:I

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0xf

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 135
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getDivider()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/android/settings/widget/SwitchBar;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setupSwitchBar()V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->updateContentsView()V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChanged :: connection state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothFunctionSettingsBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "BluetoothFunctionSettingsBase"

    const-string v0, "onCreateView()"

    .line 103
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p0, p3, :cond_1

    .line 106
    sget p0, Lcom/android/settings/R$layout;->sec_bluetooth_function_settings_content_land:I

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    sget p0, Lcom/android/settings/R$layout;->sec_bluetooth_function_settings_content:I

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->dismissDialog()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->teardownSwitchBar()V

    :cond_0
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string v0, "onPause :: mLocalBluetoothManager is null, can not unregister bluetooth callback"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    :cond_1
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string v0, "onResume :: mLocalBluetoothManager is null, can not register bluetooth callback"

    .line 156
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method abstract switchStateChange(Z)V
.end method

.method abstract updateContentsView()V
.end method
