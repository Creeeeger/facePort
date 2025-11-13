.class public Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiOffloadDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_offload:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WifiOffloadDialog"

    const-string v1, "InflateException : view already exists"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getScreenHeight()I
    .locals 1

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private updateHeight()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->wifi_picker_dialog_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->getScreenHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->updateHeight()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 34
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->wifi_on_dialog_summary:I

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->do_not_show_again:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$4;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->notifyme_later:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$3;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$2;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "WifiOffloadDialog"

    const-string v1, "onDismiss"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->updateHeight()V

    return-void
.end method

.method public setWifiDialogListener(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;

    return-void
.end method
