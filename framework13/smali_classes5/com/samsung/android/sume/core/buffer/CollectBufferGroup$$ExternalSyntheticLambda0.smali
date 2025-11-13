.class public final synthetic Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->lambda$convertTo$0(Ljava/lang/Class;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
