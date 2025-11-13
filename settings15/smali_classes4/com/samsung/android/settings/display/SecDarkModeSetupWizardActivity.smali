.class public Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "DarkModeSetupWizard"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d087f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    const p1, 0x7f080641

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f141a12

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f0a082c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x7f0a082d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    new-instance v2, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;-><init>(Landroid/app/UiModeManager;)V

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    sget-object v5, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    sget-object v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object v7, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    sget-object v3, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    sget-object v4, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    if-ne v1, v6, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    new-instance v7, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;)V

    invoke-virtual {v5, v4, v1, v7}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    new-instance v4, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;)V

    invoke-virtual {p1, v3, v1, v4}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    new-instance v7, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;)V

    invoke-virtual {v1, v5, v3, v7}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;)V

    invoke-virtual {p1, v4, v3, v1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V

    :goto_2
    new-instance p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v3, v0}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;I)V

    const v0, 0x7f14197b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method
