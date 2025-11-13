.class Lcom/samsung/android/knox/cmfa/CmfaManager$4;
.super Lcom/samsung/android/knox/cmfa/IEventListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->this$0:Lcom/samsung/android/knox/cmfa/CmfaManager;

    iput-object p2, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onStateUpdate(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onStateUpdate(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager$4;->val$listener:Lcom/samsung/android/knox/cmfa/IAuthEventListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthEventListener;->onSuccess()V

    return-void
.end method
