.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Landroid/accessibilityservice/AccessibilityShortcutInfo;

.field public final synthetic f$6:Landroid/content/Intent;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityShortcutInfo;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;

    iput p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$5:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    iput-object p7, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$6:Landroid/content/Intent;

    iput p8, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/16 v0, 0x200

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$1:I

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$5:Landroid/accessibilityservice/AccessibilityShortcutInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$6:Landroid/content/Intent;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver$$ExternalSyntheticLambda0;->f$7:I

    sget v10, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditRequestBroadcastReceiver;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_a

    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.samsung.accessibility.shortcut.action.INFO"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v10, "EXTRA_SHORTCUT_INFO_FLAGS"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v10, "EXTRA_SHORTCUT_COMPONENT"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    and-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_0

    const/16 v10, 0x21f

    invoke-static {v7, v10, v5}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v5

    const-string v10, "EXTRA_PREFERENCE_SWITCH"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    const v5, 0x7f1401ac

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v8, "bundle"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "label"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v8, "EXTRA_PREFERENCE_TITLE"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_8

    invoke-static {v7, p0, v6}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v6, p0, 0x1

    if-ne v6, v2, :cond_4

    invoke-static {v7}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f1401a7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_3
    const v2, 0x7f1401aa

    invoke-virtual {v7, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit16 v2, p0, 0x200

    if-ne v2, v0, :cond_5

    const v0, 0x7f1401a8

    invoke-virtual {v7, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_6

    const p0, 0x7f1401a9

    invoke-virtual {v7, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_7

    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v5}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string p0, "EXTRA_PREFERENCE_SUMMARY_ON"

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_8
    and-int/lit8 p0, v4, 0x8

    if-eqz p0, :cond_9

    const-string p0, "EXTRA_PREFERENCE_SUMMARY_OFF"

    const-string v0, ""

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string p0, "com.samsung.accessibility.permission.ACCESSIBILITY_SHORTCUT_EDIT"

    invoke-virtual {v7, v3, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
