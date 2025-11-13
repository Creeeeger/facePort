.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f142e55

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TapDurationPreferenceFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    return-void
.end method
