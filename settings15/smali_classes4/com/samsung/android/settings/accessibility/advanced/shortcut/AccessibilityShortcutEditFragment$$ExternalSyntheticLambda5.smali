.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->exclusiveTaskFeature:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->isExclusiveTaskEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x232a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->showPopupDialog$1(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
