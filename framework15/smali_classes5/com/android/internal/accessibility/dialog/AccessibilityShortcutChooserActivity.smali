.class public Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityShortcutChooserActivity.java"


# static fields
.field private static final blacklist KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE:Ljava/lang/String; = "accessibility_shortcut_menu_mode"


# instance fields
.field private blacklist mMenuDialog:Landroid/app/AlertDialog;

.field private blacklist mPermissionDialog:Landroid/app/Dialog;

.field private final blacklist mShortcutType:I

.field private blacklist mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0cWrZnhYdVmfg7mEaqMk3YH3WhE(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$1(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7DiGqdaoyGYry4M8d-4SNZgwpGQ(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A9C-NbLJhF6FFyphvx9JAAOx0o8(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QTC6Ktka0_3HbqdHII-Rd9HNQng(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$3(ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VZgjikEFnRB5Wya5lm40Zt4Ze5U(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$createMenuDialog$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dQVsJIiWcFz4E97dhKOcNv-CZvs(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kgeVF7JDx9Wdit8KZgDcTjliWLc(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$updateDialogListeners$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pGOMy6hA2qG6IDFFA0xtsLTJAJc(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$updateDialogListeners$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tFhIWUZ8vekqMnr7CW_VfFANXKQ(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yqI48tEZJrHu35jeLB81AKTkdR8(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mShortcutType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private blacklist createMenuDialog()Landroid/app/AlertDialog;
    .locals 8

    nop

    const v0, 0x1040152

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x0

    const-class v5, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x1

    :cond_0
    if-eqz v2, :cond_1

    nop

    const v6, 0x10404c3

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-object v3
.end method

.method private synthetic blacklist lambda$createMenuDialog$7(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$1(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$3(ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {p4}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$4(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic blacklist lambda$updateDialogListeners$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onDoneButtonClicked()V

    return-void
.end method

.method private synthetic blacklist lambda$updateDialogListeners$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    return-void
.end method

.method private blacklist onDoneButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10404c3

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private blacklist onEditButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1040494

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private blacklist onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    nop

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-direct {p0, p0, v3, p3, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->showPermissionDialogIfNeeded(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;ILcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    return-void

    :cond_1
    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->isShortcutEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onCheckedChanged(Z)V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private blacklist onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onSelected()V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private blacklist sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z
    .locals 2

    nop

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getUid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getUid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->sendRestrictedDialogIntent(Landroid/content/Context;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist showPermissionDialogIfNeeded(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;ILcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;)V

    new-instance v9, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;

    move-object v3, v9

    move-object v4, p0

    move v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    invoke-static {p1, v0, v1, v2, v9}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private blacklist updateDialogListeners()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    const v1, 0x1040152

    const v2, 0x1040146

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const v4, 0x1040146

    goto :goto_1

    :cond_1
    const v4, 0x1040152

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v0, :cond_2

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v0, :cond_3

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public blacklist getMenuDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public blacklist getPermissionDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    if-eqz p1, :cond_1

    nop

    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    :cond_1
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
