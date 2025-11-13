.class public abstract Lcom/android/settings/accessibility/AccessibilityDialogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public static mFeatureName:Ljava/lang/CharSequence;

.field public static mShortcutKey:Ljava/lang/String;


# direct methods
.method public static createCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object p0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    instance-of p1, p2, Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    instance-of p1, p2, Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_1
    return-object p0
.end method

.method public static createDialog(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;
    .locals 11

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0024

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    const/4 v4, 0x1

    if-eq p0, v4, :cond_4

    const v2, 0x7f0a00c3

    const v4, 0x7f0a108b

    const/4 v5, 0x2

    const v6, 0x7f0d0026

    if-eq p0, v5, :cond_3

    const/4 v5, 0x3

    if-eq p0, v5, :cond_2

    const v2, 0x7f14019f

    const v5, 0x7f0a070a

    const v6, 0x7f1401a0

    const v7, 0x7f0a0530

    const v8, 0x7f0a030e

    const/16 v9, 0x5a

    const v10, 0x7f0d07db

    if-eq p0, v9, :cond_1

    const/16 v9, 0x5b

    if-ne p0, v9, :cond_0

    invoke-virtual {v1, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSec(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0709

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f1401ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v1, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initQuickSettingsShortcutForSec(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSec(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object p0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const p0, 0x7f14227b

    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f1408bf

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createExclusiveDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)Landroidx/appcompat/app/AlertDialog;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->getExclusiveTaskInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    if-ne v5, v6, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {v4, v0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f142c73

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {v2, v0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142c72

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const/16 v1, 0x2396

    goto/16 :goto_4

    :cond_1
    const v5, 0x7f1418c2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0027

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0516

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a0513

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0512

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a0515

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a0514

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda7;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    const-string v14, "\n"

    const/16 v15, 0x8

    if-eqz v13, :cond_2

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v12, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda8;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;I)V

    invoke-interface {v8, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {v14}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda7;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda8;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v14}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v2, 0x7f1418c1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_2

    :cond_4
    sget-object v8, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v1, v8}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const/16 v1, 0x23a0

    :goto_4
    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v7, v1, v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f1401f5

    invoke-virtual {v3, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)V

    const v1, 0x7f1408bf

    invoke-virtual {v3, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong taskName entered : "

    invoke-static {v2, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTTSLanguageCheckDialog(Landroid/content/Context;Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 5

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x23aa

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f142fc9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->currentTTSLocale:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f142fc8

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_0
    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {p1, v1, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f142aae

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v0, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f1409d0

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    invoke-direct {v1, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f14017e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v1}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    const v0, 0x7f14017d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    const v3, 0x7f08032a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a070a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f140185

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f14017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const p0, 0x7f0a07c4

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x7f080144

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a108b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f14018b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f140181

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v0, 0x7f0a07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    const v0, 0x7f130005

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method

.method public static initQuickSettingsShortcutForSec(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0c20

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0c1f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f140186

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    sget-object v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mShortcutKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportQuickSettings(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a030e

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0ea0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0f81

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f140187

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f140188

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "\n\n"

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f140180

    goto :goto_1

    :cond_3
    const v0, 0x7f14017f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v0, 0x7f0a07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0ea0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f140187

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a0f81

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, v0, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v0, 0x7f0a07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static initSoftwareShortcutForSec(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0ea0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v1, 0x7f0a0545

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p1

    const v1, 0x7f140187

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v1, 0x7f080e0d

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1401a7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080e0f

    goto :goto_0

    :cond_2
    const v1, 0x7f080e0e

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v1, 0x7f080e0c

    :goto_0
    sget-object v2, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mShortcutKey:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mFeatureName:Ljava/lang/CharSequence;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityButtonShortcutSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0f81

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mFeatureName:Ljava/lang/CharSequence;

    const v3, 0x7f140160

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140175

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    const p0, 0x7f0a07c4

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f080146

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f080148

    goto :goto_0

    :cond_1
    const p0, 0x7f080147

    goto :goto_0

    :cond_2
    const p0, 0x7f080145

    :goto_0
    return p0
.end method

.method public static setupShortcutWidgetWithTitleAndSummary(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0f81

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return-void
.end method

.method public static showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    sput-object p4, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mShortcutKey:Ljava/lang/String;

    sput-object p5, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mFeatureName:Ljava/lang/CharSequence;

    invoke-static {p1, p0, p3, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createDialog(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const p1, 0x7f0a0413

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->setScrollIndicators(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sput-object p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static startDialogActivity(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.accessibility.dialog.AccessibilityDialogActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
