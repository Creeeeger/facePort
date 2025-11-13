.class public Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SecDarkModeSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;,
        Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;,
        Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;,
        Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$57ZLC7ryKieo8fLXgFQswkxA4jY(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;->lambda$onCreate$1(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hwzjx8Yu2VNvcKiWnwDeVrXv-CE(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;->lambda$onCreate$0(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$1(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V
    .locals 3

    const/4 p2, -0x1

    .line 63
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 64
    sget-object p2, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const p2, 0x122e6

    int-to-long v0, p1

    const-string v2, "SUW_74470"

    .line 65
    invoke-static {v2, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IJ)V

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;->saveNightModeOnSuw(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveNightModeOnSuw(I)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ui_night_mode_on_suw"

    .line 79
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "DarkModeSetupWizard"

    const-string v1, "onCreate"

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/android/settings/R$layout;->sec_dark_setupwizard:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    .line 46
    sget p1, Lcom/android/settings/R$drawable;->ic_suw_tips:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    sget p1, Lcom/android/settings/R$string;->night_display_setupwizard_title:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    .line 48
    sget p1, Lcom/android/settings/R$string;->night_display_setupwizard_subtitle:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    .line 50
    sget v1, Lcom/android/settings/R$id;->item1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    sget v1, Lcom/android/settings/R$id;->item2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;)V

    .line 51
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 53
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 55
    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 56
    new-instance v3, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;-><init>(Landroid/app/UiModeManager;)V

    .line 58
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    .line 59
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    sget-object v4, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v5, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v2, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    .line 62
    sget p1, Lcom/android/settings/R$string;->next_button_label:I

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method
