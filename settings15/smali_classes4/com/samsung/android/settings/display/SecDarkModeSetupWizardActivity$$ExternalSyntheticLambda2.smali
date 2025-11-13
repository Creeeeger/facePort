.class public final synthetic Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;

    check-cast p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    iget p1, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->value:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeManagerAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :goto_0
    return-void
.end method
