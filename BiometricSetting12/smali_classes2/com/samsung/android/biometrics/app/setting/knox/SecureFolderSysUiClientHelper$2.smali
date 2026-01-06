.class Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;
.super Ljava/lang/Object;
.source "SecureFolderSysUiClientHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->updatePasswordViewLayout(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

.field final synthetic val$passwordEntry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->val$passwordEntry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$200(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->isEnabledNdigitsPinForConfirm(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;->access$300(Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper$2;->val$passwordEntry:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onEditorAction(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
