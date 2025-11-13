.class public final synthetic Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/Request;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/Request;

    check-cast p1, Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;->lambda$request$4(Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/service/ServiceProxy;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
