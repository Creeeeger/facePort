.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;I)V
    .locals 0

    iput p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    const/4 p2, 0x0

    iget v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    packed-switch v0, :pswitch_data_0

    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal$1(Z)V

    return-void

    :pswitch_0
    iget-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p2

    iget-boolean p2, p2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv$1()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog$1()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal$1(Z)V

    :goto_1
    return-void

    :pswitch_1
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal$1(Z)V

    return-void

    :pswitch_2
    sget p2, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal$1(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
