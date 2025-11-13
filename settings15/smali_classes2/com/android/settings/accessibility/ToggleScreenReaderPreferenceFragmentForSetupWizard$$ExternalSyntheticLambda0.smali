.class public final synthetic Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;

    sget v0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
