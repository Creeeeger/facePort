.class public Lcom/samsung/android/settings/general/ResetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetSettings.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mResetListView:Landroid/widget/TextView;

.field private mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/samsung/android/settings/general/ResetSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/general/ResetSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowFinalConfirmation(Lcom/samsung/android/settings/general/ResetSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 115
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettings$1;-><init>(Lcom/samsung/android/settings/general/ResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishResetState()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_soft_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetListView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->reset_security_settings:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 103
    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 102
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->reset_language_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 105
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 104
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->account_dashboard_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    .line 107
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 106
    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->reset_personal_data:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 109
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_3

    :cond_3
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 108
    :goto_3
    invoke-virtual {v3, v4, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->reset_download_apps:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 111
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_4

    :cond_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 110
    :goto_4
    invoke-virtual {v2, v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mResetListView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 53
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_settings_reset_title:I

    .line 54
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private showFinalConfirmation()V
    .locals 2

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_settings_reset_title:I

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x1235

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1234

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq p1, p3, :cond_3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->showFinalConfirmation()V

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->establishResetState()V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->showFinalConfirmation()V

    goto :goto_0

    .line 73
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->establishResetState()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 88
    sget p3, Lcom/android/settings/R$layout;->sec_reset_settings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettings;->mContentView:Landroid/view/View;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettings;->establishResetState()V

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method
