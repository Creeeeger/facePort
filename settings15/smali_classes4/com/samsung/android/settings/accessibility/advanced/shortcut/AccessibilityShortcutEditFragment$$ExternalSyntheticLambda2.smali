.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140169

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const-string p0, "com.samsung.android.settings.accessibility.advanced.shortcut.AccessibilityButtonPreferenceFragment"

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez p1, :cond_0

    const-string p1, "AccessibilityShortcutEditFragment"

    const-string v0, "createUnInstallIntent -- invalid a11yServiceInfo"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->languageDialogInfo:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->shouldShowDialog:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x232c

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->showPopupDialog$1(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->exclusiveTaskFeature:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->isExclusiveTaskEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x232a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->showPopupDialog$1(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
