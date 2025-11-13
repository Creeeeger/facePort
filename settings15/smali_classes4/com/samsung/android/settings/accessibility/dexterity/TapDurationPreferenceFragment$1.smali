.class public final Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string/jumbo p1, "onChange"

    const-string p2, "TapDurationPreferenceFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tap_duration_threshold"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mTapDurationPeriod:F

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    iget p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mTapDurationPeriod:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "updateSwitchBarToggleSwitch"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationUtils;->isTapDurationEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eq p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_0
    return-void
.end method
