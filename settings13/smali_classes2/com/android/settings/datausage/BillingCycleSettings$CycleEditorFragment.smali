.class public Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
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
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCycleDayPicker(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 672
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    .locals 3

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 687
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$fgetmNetworkTemplate(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 690
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 691
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 692
    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "cycleEditor"

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x225

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 808
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 809
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 812
    invoke-interface {p0}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 827
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 828
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/DataUsageEditController;

    .line 829
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 832
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 834
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result v1

    .line 835
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 837
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    const/16 p1, 0x1bd0

    .line 839
    invoke-static {p1}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$sfputsSetBillingCycle(I)V

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getMetricsCategory()I

    move-result p0

    invoke-static {}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$sfgetsSetBillingCycle()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 723
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageEditController;

    .line 724
    invoke-interface {v1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v1

    .line 726
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 727
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 729
    sget v4, Lcom/android/settings/R$layout;->data_usage_cycle_editor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 731
    sget v4, Lcom/android/settings/R$id;->cycle_day:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    .line 733
    sget v4, Lcom/android/settings/R$id;->text_cycle_day:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 734
    invoke-static {v0, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 735
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 737
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "template"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_0

    const-string v1, "CYCLE_DAY"

    .line 741
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    .line 745
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateDialog()template:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cycleDay"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingCycleSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 748
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 750
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    .line 751
    iget-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    .line 753
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v0, "inputType=YearDateTime_edittext"

    .line 754
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 755
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 769
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 771
    sget p1, Lcom/android/settings/R$string;->sec_data_usage_set_cycle:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/settings/R$string;->data_usage_cycle_editor_title:I

    :goto_1
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 772
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_cycle_editor_positive:I

    .line 773
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 774
    invoke-virtual {p1, v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 775
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 776
    invoke-static {}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$sfgetmAnchorView()Landroidx/preference/SecPreference;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->-$$Nest$smupdateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    .line 777
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment$2;-><init>(Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 784
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 820
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 821
    iget-object p0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    const-string v0, "CYCLE_DAY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
