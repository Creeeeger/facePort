.class public final synthetic Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;->f$1:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda1;->f$1:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;->lambda$onErrorTimeoutFinish$1(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method
