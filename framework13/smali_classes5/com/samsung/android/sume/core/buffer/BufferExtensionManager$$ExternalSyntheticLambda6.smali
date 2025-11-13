.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/Pair;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda6;->f$0:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda6;->f$0:Landroid/util/Pair;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->lambda$findAvailableBinaryKey$16(Landroid/util/Pair;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
