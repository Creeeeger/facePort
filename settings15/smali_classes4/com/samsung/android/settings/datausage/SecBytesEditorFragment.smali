.class public Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAnchorView:Landroidx/preference/SecPreference;

.field public mByteText:Landroid/widget/EditText;

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;

    const-class v0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/samsung/android/settings/datausage/SecBillingCycleSettings;ZLandroidx/preference/SecPreference;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "tethering"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p2, "warningEditor"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x226

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const-string p1, "SecBillingCycleSettings.SecBytesEditorFragment"

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "tethering"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    const v3, 0x7f0a02c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    const v4, 0x7f0a0e66

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v2, "0"

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    const-wide/32 v3, 0xf4240

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x3b9aca00

    :goto_0
    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_1

    :catch_0
    const-string v2, "NumberFormatException"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    :goto_1
    long-to-float v4, v2

    const v5, 0x5368d4a5    # 1.0E12f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const-wide v2, 0xe8d4a51000L

    :cond_4
    const v4, 0x7f140bd9

    const-wide/16 v5, -0x1

    const/16 v7, 0x226

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    const/16 v0, 0x1bd6

    invoke-static {v7, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyWarningBytes()J

    move-result-wide v0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_5

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyWarningBytes(J)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPolicyLimitBytes() limitBytes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_6
    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyLimitBytes(J)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setTetheringDataWarningValue(Ljava/lang/Long;)V

    goto :goto_2

    :cond_8
    const/16 v0, 0x1bd5

    invoke-static {v7, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyLimitBytes()J

    move-result-wide v0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_9

    cmp-long v5, v0, v2

    if-gez v5, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-wide v2, v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPolicyWarningBytes() WarningBytes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->setPolicyWarningBytes(J)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const v3, 0x7f0d0885

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    const v3, 0x7f0a0e66

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v6, 0x7f0606bb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    const v6, 0x7f0a02c0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/SecBillingCycleManager;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment$1;

    invoke-direct {v8}, Landroid/text/method/NumberKeyListener;-><init>()V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "tethering"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getTetheringDataWarningValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyLimitBytes()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/SecBillingCycleManager;->getPolicyWarningBytes()J

    move-result-wide v7

    :goto_0
    const-wide/32 v9, 0x3b9aca00

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    long-to-float v9, v7

    const v10, 0x5368d4a5    # 1.0E12f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const-wide v7, 0xe8d4a51000L

    :cond_3
    long-to-double v7, v7

    if-eqz v2, :cond_4

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    goto :goto_2

    :cond_4
    const-wide v9, 0x412e848000000000L    # 1000000.0

    :goto_2
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    div-double/2addr v7, v9

    invoke-virtual {v11, v7, v8}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    const-string v9, "."

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_5

    const p1, 0x7f140bb4

    goto :goto_3

    :cond_5
    const p1, 0x7f140bd1

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const p1, 0x7f140b93

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p1, 0x1040000

    invoke-virtual {v0, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mAnchorView:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v12

    add-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    const-string v1, "disableCommaKey=true;disableEmoticonInput=true;disableImage=true;ignoreImeInternalFlagAppWindowPortrait=true;disableAutoReplacement=true"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecBytesEditorFragment;->mByteText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method
