.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->lambda$registerLogger$9$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
