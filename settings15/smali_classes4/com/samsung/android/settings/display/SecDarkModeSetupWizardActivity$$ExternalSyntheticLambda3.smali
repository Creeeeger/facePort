.class public final synthetic Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    sget v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;->$r8$clinit:I

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object v3, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    :cond_2
    int-to-long v1, v0

    const p0, 0x122e6

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const-string v4, "SUW_74470"

    invoke-static {v1, v2, v4, p0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "ui_night_mode_on_suw"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
