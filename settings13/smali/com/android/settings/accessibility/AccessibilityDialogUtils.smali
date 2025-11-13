.class public Lcom/android/settings/accessibility/AccessibilityDialogUtils;
.super Ljava/lang/Object;
.source "AccessibilityDialogUtils.java"


# direct methods
.method public static synthetic $r8$lambda$X9ckJH4zJhbC2cbkh7p9U9dbooQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mdw6ycc2n20HKk3IjLeE_nE2T-E(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$getCustomizeAccessibilityButtonLink$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uorva4ndZLB1r1EveS1G6_x86sM(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$initAdvancedWidget$2(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zr1aqYO-AUxvv4p20Q-1MUf-F0w(ILjava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$setupShortcutWidgetWithImageRawResource$1(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static createCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 488
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 490
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 491
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 493
    invoke-virtual {p0, p5, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 495
    instance-of p1, p2, Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    instance-of p1, p2, Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    .line 496
    :cond_0
    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    :cond_1
    return-object p0
.end method

.method private static createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 184
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->save:I

    .line 187
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 188
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 252
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 254
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 255
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 256
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 257
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 244
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 246
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 247
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 248
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 249
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 238
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 240
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 241
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 232
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 234
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 235
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public static createSingleChoiceListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 512
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000a

    .line 514
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    const/4 v1, 0x0

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 518
    new-instance v1, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 519
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 421
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 426
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 428
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_floating:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    .line 433
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 440
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 441
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 442
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 443
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 444
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static initAdvancedWidget(Landroid/view/View;)V
    .locals 2

    .line 358
    sget v0, Lcom/android/settings/R$id;->advanced_shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 359
    sget v1, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 360
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda3;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 334
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 335
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 337
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 339
    sget v1, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 344
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 345
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_triple_tap:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 347
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_triple_tap:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 351
    invoke-static {p0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 353
    sget v1, Lcom/android/settings/R$raw;->accessibility_shortcut_type_triple_tap:I

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithImageRawResource(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 323
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 324
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 328
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 330
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    .line 327
    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 311
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 312
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    sget v1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 315
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 318
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 319
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    .line 317
    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 189
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$getCustomizeAccessibilityButtonLink$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 421
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;

    .line 422
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x751

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static synthetic lambda$initAdvancedWidget$2(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 361
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 362
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$setupShortcutWidgetWithImageRawResource$1(ILjava/lang/Throwable;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid image raw resource id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityDialogUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I
    .locals 1

    .line 408
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_floating:I

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 412
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture_talkback:I

    goto :goto_0

    .line 413
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_gesture:I

    goto :goto_0

    .line 415
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software:I

    :goto_0
    return p0
.end method

.method private static retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3

    .line 388
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 389
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 391
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\n\n"

    if-eqz v1, :cond_2

    .line 392
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture_talkback:I

    goto :goto_0

    .line 394
    :cond_1
    sget p1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_gesture:I

    .line 395
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 396
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 399
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 400
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    return-object v0
.end method

.method private static retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 368
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 369
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private static retrieveTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 377
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software_by_gesture:I

    goto :goto_0

    .line 382
    :cond_1
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    .line 384
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static setScrollIndicators(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    .line 212
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method

.method private static setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    .line 200
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 201
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 268
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 269
    invoke-static {p0, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithImageResource(Landroid/view/View;I)V

    return-void
.end method

.method private static setupShortcutWidgetWithImageRawResource(Landroid/view/View;I)V
    .locals 1

    .line 301
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 302
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p1, -0x1

    .line 306
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 307
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private static setupShortcutWidgetWithImageRawResource(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 274
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 275
    invoke-static {p0, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithImageRawResource(Landroid/view/View;I)V

    return-void
.end method

.method private static setupShortcutWidgetWithImageResource(Landroid/view/View;I)V
    .locals 1

    .line 295
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 296
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 280
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 283
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 285
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 158
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 160
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p0
.end method

.method public static updateSoftwareShortcutInDialog(Landroid/content/Context;Landroid/app/Dialog;)Z
    .locals 1

    .line 173
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
