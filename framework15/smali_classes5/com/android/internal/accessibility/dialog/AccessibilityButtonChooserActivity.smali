.class public Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityButtonChooserActivity.java"


# instance fields
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
.method public static synthetic blacklist $r8$lambda$ZySi-3ZUvS9dQl9HfdDQerZ-nzo(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const-string v0, "accessibility_button_target_component"

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "access_control_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDexDualMonitorDisplay(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v6, "android"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "shortcutType"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x30000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1090018

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->setContentView(I)V

    const v0, 0x1020278

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_button_target_component"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    nop

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v7, v6, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    if-eqz v6, :cond_7

    const v7, 0x102019c

    invoke-virtual {p0, v7}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    const v8, 0x1040149

    goto :goto_3

    :cond_6
    const v8, 0x104014b

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const v7, 0x102019b

    invoke-virtual {p0, v7}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    if-eqz v5, :cond_8

    const v8, 0x1040148

    goto :goto_4

    :cond_8
    const v8, 0x104014a

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v1, 0x102019a

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;

    iget-object v7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v3, v7}, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
