.class public final Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string p1, "SlowKeysPreferenceFragment"

    const-string p2, "mSlowKeysObserver onChange()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mSlowKeysPeriodMilli:J

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eq p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method
