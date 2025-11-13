.class Lcom/samsung/android/knox/cmfa/CmfaManager$2;
.super Lcom/samsung/android/knox/cmfa/IResultListener$Stub;
.source "CmfaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/cmfa/CmfaManager;->start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

.field final synthetic val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/IAuthResultListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthResultListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthResultListener;->onSuccess()V

    return-void
.end method
