.class public Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnchorView:Landroidx/preference/SecPreference;

.field public mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    const-class v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x225

    return p0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p2, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object p2

    iput-object p2, p1, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iput-boolean v0, p1, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {v2}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object p2

    iput-object p2, p1, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iput-boolean v0, p1, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {v2}, Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    :goto_0
    const/16 p0, 0x225

    const/16 p1, 0x1bd0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0886

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0482

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const v3, 0x7f0a0ff5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v6, "template"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_0

    const-string v0, "CYCLE_DAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p1

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onCreateDialog()template:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cycleDay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecBillingCycleSettings.SecCycleEditorFragment"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v6, 0x1f

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v3, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheelPreferred:Z

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v0, "inputType=YearDateTime_edittext"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;-><init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1422c3

    goto :goto_1

    :cond_3
    const p1, 0x7f140b95

    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const p1, 0x7f140b93

    invoke-virtual {v1, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p1, 0x1040000

    invoke-virtual {v1, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;-><init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    const-string v0, "CYCLE_DAY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
