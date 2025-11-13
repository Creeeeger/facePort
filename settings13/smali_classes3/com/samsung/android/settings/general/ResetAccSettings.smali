.class public Lcom/samsung/android/settings/general/ResetAccSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetAccSettings.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/samsung/android/settings/general/ResetAccSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/general/ResetAccSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowFinalConfirmation(Lcom/samsung/android/settings/general/ResetAccSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 90
    new-instance v0, Lcom/samsung/android/settings/general/ResetAccSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetAccSettings$1;-><init>(Lcom/samsung/android/settings/general/ResetAccSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishResetState()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_soft_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 51
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_reset_accessibility_title:I

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private showFinalConfirmation()V
    .locals 3

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_accsettings"

    const/4 v2, 0x1

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_reset_accessibility_title:I

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1f53

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1f53

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->showFinalConfirmation()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->establishResetState()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 78
    sget p3, Lcom/android/settings/R$layout;->sec_reset_accsettings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->establishResetState()V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method
