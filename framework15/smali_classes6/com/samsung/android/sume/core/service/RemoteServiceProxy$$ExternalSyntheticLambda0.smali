.class public final synthetic Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/ResponseHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ResponseHolder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ResponseHolder;

    check-cast p1, Lcom/samsung/android/sume/core/message/Message;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->lambda$request$1(Lcom/samsung/android/sume/core/message/ResponseHolder;Lcom/samsung/android/sume/core/message/Message;)V

    return-void
.end method
