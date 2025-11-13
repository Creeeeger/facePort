.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mByteText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(DD)Ljava/lang/String;
    .locals 1

    .line 582
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p0

    const/4 v0, 0x2

    .line 583
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    div-double/2addr p1, p3

    .line 584
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 7

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 542
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 554
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    :goto_0
    long-to-float v2, v0

    const v3, 0x4eb2d05e    # 1.5E9f

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const v5, 0x5368d4a5    # 1.0E12f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    const-wide v0, 0xe8d4a51000L

    :cond_2
    long-to-double v0, v0

    if-eqz v3, :cond_3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    goto :goto_2

    :cond_3
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 566
    :goto_2
    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(DD)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "."

    .line 568
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v4, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 578
    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    .locals 3

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 478
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "limit"

    .line 480
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    new-instance p1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 483
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v0, "warningEditor"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x226

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const-string p1, "BillingCycleSettings"

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/DataUsageEditController;

    .line 593
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 598
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 599
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 601
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v3, "0"

    :cond_2
    const-wide/16 v5, 0x0

    .line 607
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 608
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    const-wide/32 v4, 0xf4240

    goto :goto_0

    :cond_3
    const-wide/32 v4, 0x3b9aca00

    :goto_0
    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v5, v3

    goto :goto_1

    :catch_0
    const-string v3, "NumberFormatException"

    .line 610
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    long-to-float v3, v5

    const v4, 0x5368d4a5    # 1.0E12f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    const-wide v5, 0xe8d4a51000L

    :cond_4
    const-wide/16 v3, -0x1

    if-eqz v2, :cond_6

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getMetricsCategory()I

    move-result p0

    const/16 v2, 0x1bd6

    invoke-static {p0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 619
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v7

    cmp-long p0, v7, v3

    if-eqz p0, :cond_5

    cmp-long p0, v7, v5

    if-lez p0, :cond_5

    .line 621
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 623
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_2

    .line 626
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getMetricsCategory()I

    move-result p0

    const/16 v2, 0x1bd5

    invoke-static {p0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 627
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v7

    cmp-long p0, v7, v3

    if-eqz p0, :cond_7

    cmp-long p0, v7, v5

    if-gez p0, :cond_7

    move-wide v5, v7

    .line 631
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 660
    :goto_2
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 496
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 498
    sget v2, Lcom/android/settings/R$layout;->data_usage_bytes_editor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 501
    sget v2, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 502
    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_sub_app_bar_spinner_arrow_color:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 503
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 504
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    .line 505
    sget p1, Lcom/android/settings/R$string;->data_usage_limit_editor_title:I

    goto :goto_0

    .line 506
    :cond_0
    sget p1, Lcom/android/settings/R$string;->data_usage_warning_editor_title:I

    .line 505
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 508
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_cycle_editor_positive:I

    .line 509
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 510
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 512
    invoke-static {}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$sfgetmAnchorView()Landroidx/preference/SecPreference;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$smupdateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mByteText:Landroid/widget/EditText;

    const-string v1, "disableCommaKey=true"

    .line 514
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 515
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mByteText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 516
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    .line 517
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 535
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 536
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mByteText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method
