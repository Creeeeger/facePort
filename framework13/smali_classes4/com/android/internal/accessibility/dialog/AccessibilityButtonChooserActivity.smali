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
.method public constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilityButtonChooserActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 115
    const-string v0, "accessibility_button_target_component"

    .line 116
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "name":Ljava/lang/String;
    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 121
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V

    .line 122
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

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    .line 124
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 64
    .local v0, "accessControlEnabled":Z
    :goto_0
    if-nez v0, :cond_1

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "chooserClassName":Ljava/lang/String;
    const-string v5, "android"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v5, "shortcutType"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const/high16 v5, 0x30000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "chooserClassName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    .line 74
    .end local v0    # "accessControlEnabled":Z
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x1090018

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->setContentView(I)V

    .line 77
    const v0, 0x1020270

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 78
    .local v0, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v0, :cond_2

    .line 79
    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_button_target_component"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "component":Ljava/lang/String;
    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    .line 86
    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 87
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 88
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    .line 89
    .local v5, "isTouchExploreOn":Z
    const/4 v6, 0x2

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00d6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 93
    .local v1, "isGestureNavigateEnabled":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 94
    const v6, 0x1020198

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "promptPrologue":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 96
    const v7, 0x1040140

    goto :goto_2

    .line 97
    :cond_4
    const v7, 0x1040142

    .line 95
    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 100
    .end local v6    # "promptPrologue":Landroid/widget/TextView;
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    const v6, 0x1020197

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "prompt":Landroid/widget/TextView;
    if-eqz v1, :cond_7

    .line 103
    if-eqz v5, :cond_6

    .line 104
    const v7, 0x104013f

    goto :goto_3

    .line 105
    :cond_6
    const v7, 0x1040141

    .line 103
    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_7
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    .end local v6    # "prompt":Landroid/widget/TextView;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    const v2, 0x1020196

    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 113
    .local v2, "gridview":Landroid/widget/GridView;
    new-instance v6, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;

    iget-object v7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v6, v7}, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance v6, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void
.end method
