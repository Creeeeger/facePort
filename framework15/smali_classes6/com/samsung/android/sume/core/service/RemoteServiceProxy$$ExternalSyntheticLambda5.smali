.class public final synthetic Lcom/samsung/android/sume/core/service/RemoteServiceProxy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-static {p1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->lambda$release$5(Lcom/samsung/android/sume/core/message/ResponseHolder;)V

    return-void
.end method
