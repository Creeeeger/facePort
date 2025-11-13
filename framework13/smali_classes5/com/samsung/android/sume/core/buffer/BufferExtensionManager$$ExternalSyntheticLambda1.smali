.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->lambda$unRegisterRelease$7(Ljava/util/Map$Entry;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
