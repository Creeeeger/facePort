.class public Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilitySamsungShortcutChooserActivity.java"


# instance fields
.field private blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mCurrentDisplayId:I

.field private blacklist mMenuDialog:Landroid/app/AlertDialog;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mShortcutType:I

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
.method public static synthetic blacklist $r8$lambda$-z8VuI53Ao5J-IAVNC6MK3rKVUc(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lVcUo5SGRYqnsv7wpm_lW5UmGWY(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qGYY86qom2wSeA9_ASmAe5QMfcI(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$updateDialogListeners$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zqAc7iV3TFewfumfzPJbV9XJrE4(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$createMenuDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    new-instance v0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private blacklist createMenuDialog()Landroid/app/AlertDialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    nop

    const v4, 0x10404c3

    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getGravity()I
    .locals 2

    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x55

    return v0

    :cond_1
    const/16 v0, 0x51

    return v0
.end method

.method private synthetic blacklist lambda$createMenuDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private synthetic blacklist lambda$updateDialogListeners$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onEditShortcutClicked()V

    return-void
.end method

.method private blacklist onEditShortcutClicked()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForCoverScreen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const/4 v2, 0x1

    const-string v3, "com.android.settings"

    if-ne v1, v2, :cond_1

    const-string v1, "com.android.settings.Settings$AccessibilityButtonPreferenceActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "com.android.settings.Settings$VolumeUpAndDownPreferenceActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const/16 v2, 0x200

    if-ne v1, v2, :cond_3

    const-string v1, "com.android.settings.Settings$SideAndVolumeUpPreferenceActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method private blacklist onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    const-string v1, "accessibility_button_target_component"

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-static {p0, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->needToShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    iget v6, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/accessibility/AccessibilityManager;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v4

    invoke-static {p0, v4, v2}, Landroid/view/accessibility/A11yLogger;->insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private blacklist updateDialogListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->requestWindowFeature(I)Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "shortcutType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    :cond_1
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-static {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x7d9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    :cond_2
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public whitelist onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    :goto_0
    return-void
.end method

.method public whitelist onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->overridePendingTransition(II)V

    return-void
.end method
