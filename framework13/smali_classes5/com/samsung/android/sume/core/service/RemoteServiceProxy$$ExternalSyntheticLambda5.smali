.class public final synthetic Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/Response;

.field public final synthetic blacklist f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Response;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/message/Response;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/message/Response;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    check-cast p1, Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->lambda$onError$4(Lcom/samsung/android/sume/core/message/Response;Ljava/lang/Exception;Lcom/samsung/android/sume/core/message/ResponseHolder;)V

    return-void
.end method
