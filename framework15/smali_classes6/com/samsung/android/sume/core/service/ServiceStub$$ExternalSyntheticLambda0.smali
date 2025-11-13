.class public final synthetic Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/Request;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/Request;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceStub$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/Request;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/service/ServiceStub;->lambda$request$0(Lcom/samsung/android/sume/core/message/Request;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
