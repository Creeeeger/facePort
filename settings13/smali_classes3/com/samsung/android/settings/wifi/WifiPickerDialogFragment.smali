.class public Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$fxXm-ez6KrrV1ENwLBrw3AeUS2U(Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createTitleView()Landroid/view/View;
    .locals 3

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_custom_title_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    sget v1, Lcom/android/settings/R$id;->title_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    sget v2, Lcom/android/settings/R$string;->wifi_access_points:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    sget v1, Lcom/android/settings/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->sec_wifi_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getScreenHeight()I
    .locals 1

    .line 102
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private updateHeight()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->wifi_picker_dialog_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->getScreenHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
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

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->updateHeight()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->wifi_access_points:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->createTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;)V

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->sec_bluetooth_scandialog_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "WifiPickerDialog"

    const-string v1, "onDismiss"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->wifi_picker_dialog_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lcom/android/settings/wifi/WifiSettings;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setExternalProgressBar(Landroid/widget/ProgressBar;)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->updateHeight()V

    :cond_1
    return-void
.end method

.method public setWifiDialogListener(Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;

    return-void
.end method
