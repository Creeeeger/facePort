.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$doStringfy$28(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
