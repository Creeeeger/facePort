.class public final synthetic Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->lambda$getPackageMap$0(Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
