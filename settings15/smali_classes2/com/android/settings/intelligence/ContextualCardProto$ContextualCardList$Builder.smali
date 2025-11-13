.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->-$$Nest$maddCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-void
.end method
