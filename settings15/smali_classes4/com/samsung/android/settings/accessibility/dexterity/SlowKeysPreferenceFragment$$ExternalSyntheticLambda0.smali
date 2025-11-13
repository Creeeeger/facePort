.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Z)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;)V

    const/4 v2, 0x0

    const-string/jumbo v3, "slow_keys"

    invoke-static {p1, v3, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createExclusiveDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return v0
.end method
