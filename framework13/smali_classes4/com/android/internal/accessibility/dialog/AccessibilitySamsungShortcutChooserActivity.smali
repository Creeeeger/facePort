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
.method public static synthetic blacklist $r8$lambda$CbL693xvDLC9t8FjinZmVc9uFdY(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private blacklist createMenuDialog()Landroid/app/AlertDialog;
    .locals 3

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const v1, 0x104048a

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "positiveButtonText":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    .end local v1    # "positiveButtonText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getGravity()I
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->isDexModeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    const/16 v0, 0x55

    return v0

    .line 239
    :cond_1
    const/16 v0, 0x51

    return v0
.end method

.method private blacklist isDexModeScreen()Z
    .locals 5

    .line 245
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 246
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    .line 247
    .local v2, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 248
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 249
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 247
    :goto_0
    return v0

    .line 250
    .end local v1    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v2    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method private blacklist onEditShorcutClicked()V
    .locals 4

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const-string v2, "com.samsung.accessibility"

    if-nez v1, :cond_0

    .line 197
    const-string v1, "com.samsung.accessibility.Activities$AccessibilityButtonPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 198
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 199
    const-string v1, "com.samsung.accessibility.Activities$VolumeUpAndDownPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 202
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 203
    const-string v1, "com.samsung.accessibility.Activities$SideAndVolumeUpPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_2
    :goto_0
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 212
    :goto_1
    return-void
.end method

.method private blacklist onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 161
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 162
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    const-string v1, "accessibility_button_target_component"

    .line 163
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "targetName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "targetLabel":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 166
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-static {p0, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForEmergencyMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->isDexModeScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-static {p0, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForDexMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_2

    .line 179
    iget v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    iget v6, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/accessibility/AccessibilityManager;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    .line 181
    :cond_2
    nop

    .line 182
    const-string v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v4

    invoke-static {p0, v4, v2}, Landroid/view/accessibility/A11yLogger;->insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    return-void
.end method

.method private blacklist updateDialogListeners()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$createMenuDialog$2$com-android-internal-accessibility-dialog-AccessibilitySamsungShortcutChooserActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    return-void
.end method

.method synthetic blacklist lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilitySamsungShortcutChooserActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method synthetic blacklist lambda$updateDialogListeners$1$com-android-internal-accessibility-dialog-AccessibilitySamsungShortcutChooserActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 190
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onEditShorcutClicked()V

    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 128
    .local v1, "attr":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    .end local v0    # "w":Landroid/view/Window;
    .end local v1    # "attr":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "theme":Landroid/content/res/TypedArray;
    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->requestWindowFeature(I)Z

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 98
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 99
    const-string/jumbo v2, "shortcutType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-static {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    new-instance v2, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 103
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    .line 104
    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 106
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 107
    .local v3, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 108
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 112
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    .line 119
    :cond_2
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 120
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    return-void
.end method

.method public whitelist onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "tempDisplayId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 153
    :cond_0
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    .line 158
    :goto_0
    return-void
.end method

.method public whitelist onPause()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->overridePendingTransition(II)V

    .line 137
    return-void
.end method
