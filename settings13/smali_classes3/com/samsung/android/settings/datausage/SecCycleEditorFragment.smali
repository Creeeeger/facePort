.class public Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecCycleEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorView:Landroidx/preference/SecPreference;

.field private mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnchorView(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCycleDayPicker(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)Landroidx/picker/widget/SeslNumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogAnchorView(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageList;Landroid/net/NetworkTemplate;)Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    const-string v1, "is_set_cycle"

    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    new-instance p1, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;-><init>()V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "cycleEditor"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static show(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;Landroidx/preference/SecPreference;)Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    new-instance v1, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;-><init>()V

    .line 50
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->setAnchorView(Landroidx/preference/SecPreference;)V

    .line 51
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "cycleEditor"

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 185
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 186
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 187
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 188
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x225

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->updateScreen()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 164
    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 166
    iget-object p2, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p2

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setCycleDay(I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1bd0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 80
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 83
    sget v3, Lcom/android/settings/R$layout;->data_usage_cycle_editor:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 84
    sget v3, Lcom/android/settings/R$id;->cycle_day:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/SeslNumberPicker;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    .line 86
    sget v3, Lcom/android/settings/R$id;->text_cycle_day:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 88
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "template"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_0

    const-string v0, "CYCLE_DAY"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p1

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay()I

    move-result p1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    .line 104
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog()template:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cycleDay"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPicker;->setMinValue(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    const/16 v6, 0x1f

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPicker;->setValue(I)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v0, "inputType=YearDateTime_edittext"

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$1;-><init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_set_cycle"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    sget p1, Lcom/android/settings/R$string;->sec_data_usage_set_cycle:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/android/settings/R$string;->data_usage_cycle_editor_title:I

    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_cycle_editor_positive:I

    .line 131
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 132
    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    .line 135
    new-instance v0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment$2;-><init>(Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 141
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mCycleDayPicker:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPicker;->getValue()I

    move-result p0

    const-string v0, "CYCLE_DAY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAnchorView(Landroidx/preference/SecPreference;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecCycleEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    return-void
.end method
