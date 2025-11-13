.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f142e55

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "tap_duration_enabled"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/AccessibilityNotificationUtil;->updateTapDurationNotification(Landroid/content/Context;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Settings"

    goto :goto_0

    :cond_0
    const-string p0, "SetupWizard"

    :goto_0
    const-string p2, "From"

    invoke-static {p2, p0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const/16 p2, 0x138e

    const-string v0, "A11Y5017"

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
