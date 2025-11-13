.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

.field public final synthetic blacklist f$1:Ljava/lang/Class;

.field public final synthetic blacklist f$2:Ljava/lang/Class;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/util/List;

.field public final synthetic blacklist f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Class;

    iput-object p4, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;->f$5:Ljava/util/List;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->lambda$findAvailableBinaryKey$15$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
