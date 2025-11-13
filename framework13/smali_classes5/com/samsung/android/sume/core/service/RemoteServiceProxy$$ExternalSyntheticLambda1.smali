.class public final synthetic Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/message/Request;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/message/Request;

    iput-object p3, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/message/Request;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->lambda$request$2$com-samsung-android-sume-core-service-RemoteServiceProxy(Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    return-object v0
.end method
