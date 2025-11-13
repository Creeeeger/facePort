.class Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;
.super Lcom/samsung/android/knox/zt/config/IEventListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/config/ITrustEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/config/ConfigurationManager;Lcom/samsung/android/knox/zt/config/ITrustEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;->this$0:Lcom/samsung/android/knox/zt/config/ConfigurationManager;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustEventListener;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/config/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustEventListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/ITrustEventListener;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onStateUpdate(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustEventListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/config/ITrustEventListener;->onStateUpdate(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/config/ConfigurationManager$4;->val$listener:Lcom/samsung/android/knox/zt/config/ITrustEventListener;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/ITrustEventListener;->onSuccess()V

    return-void
.end method
