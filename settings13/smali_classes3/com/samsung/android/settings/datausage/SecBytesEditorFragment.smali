.class public Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecBytesEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorView:Landroidx/preference/SecPreference;

.field private mByteText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(DD)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p0

    const/4 v0, 0x2

    .line 134
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    div-double/2addr p1, p3

    .line 135
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 6

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment$1;-><init>(Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tethering"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getTetheringDataWarningValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyLimitBytes()J

    move-result-wide v0

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyWarningBytes()J

    move-result-wide v0

    :goto_0
    const-wide/32 v2, 0x3b9aca00

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    long-to-float v4, v0

    const v5, 0x5368d4a5    # 1.0E12f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const-wide v0, 0xe8d4a51000L

    :cond_3
    long-to-double v0, v0

    if-eqz v2, :cond_4

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    goto :goto_2

    :cond_4
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 123
    :goto_2
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->formatText(DD)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "."

    .line 125
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 129
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;ZLandroidx/preference/SecPreference;Z)Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "limit"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "tethering"

    .line 52
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    new-instance p1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;-><init>()V

    .line 55
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->setAnchorView(Landroidx/preference/SecPreference;)V

    .line 56
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "warningEditor"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 202
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 203
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 204
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 205
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x226

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "limit"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 150
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v1, "0"

    :cond_2
    const-wide/16 v3, 0x0

    .line 156
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 157
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    const-wide/32 v2, 0xf4240

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x3b9aca00

    :goto_0
    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v3, v1

    goto :goto_1

    .line 159
    :catch_0
    sget-object v1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "NumberFormatException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    long-to-float v1, v3

    const v2, 0x5368d4a5    # 1.0E12f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const-wide v3, 0xe8d4a51000L

    :cond_4
    const-wide/16 v1, -0x1

    if-eqz p2, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->getMetricsCategory()I

    move-result p0

    const/16 p2, 0x1bd6

    invoke-static {p0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyWarningBytes()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_5

    cmp-long p0, v5, v3

    if-lez p0, :cond_5

    .line 170
    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyWarningBytes(J)V

    .line 172
    :cond_5
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPolicyLimitBytes() limitBytes : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytes(J)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 175
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setTetheringDataWarningValue(Ljava/lang/Long;)V

    goto :goto_2

    .line 177
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->getMetricsCategory()I

    move-result p0

    const/16 p2, 0x1bd5

    invoke-static {p0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyLimitBytes()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_8

    cmp-long p0, v5, v3

    if-gez p0, :cond_8

    move-wide v3, v5

    .line 182
    :cond_8
    sget-object p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPolicyWarningBytes() WarningBytes : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyWarningBytes(J)V

    :goto_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 66
    sget v2, Lcom/android/settings/R$layout;->data_usage_bytes_editor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    .line 68
    sget v2, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 69
    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_sub_app_bar_spinner_arrow_color:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 70
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 71
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    .line 72
    sget p1, Lcom/android/settings/R$string;->data_usage_limit_editor_title:I

    goto :goto_0

    .line 73
    :cond_0
    sget p1, Lcom/android/settings/R$string;->data_usage_warning_editor_title:I

    .line 72
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_cycle_editor_positive:I

    .line 75
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 76
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroidx/appcompat/app/AlertDialog;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    const-string v1, "disableCommaKey=true"

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroidx/preference/SecPreference;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    return-void
.end method
