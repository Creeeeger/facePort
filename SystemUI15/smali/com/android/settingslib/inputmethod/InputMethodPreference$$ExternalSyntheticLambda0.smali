.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 2

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    packed-switch v1, :pswitch_data_0

    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    throw v0

    :pswitch_0
    iget-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p2

    iget-boolean p2, p2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv$1()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    throw v0

    :pswitch_1
    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    throw v0

    :pswitch_2
    sget p2, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
