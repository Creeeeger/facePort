.class public final synthetic Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;

    check-cast p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiModeUpdater;->update(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V

    return-void
.end method
