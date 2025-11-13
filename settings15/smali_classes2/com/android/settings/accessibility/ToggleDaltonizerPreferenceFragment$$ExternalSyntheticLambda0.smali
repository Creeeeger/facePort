.class public final synthetic Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->sControllers:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->updateSwitchBarToggleSwitch()V

    return-void
.end method
