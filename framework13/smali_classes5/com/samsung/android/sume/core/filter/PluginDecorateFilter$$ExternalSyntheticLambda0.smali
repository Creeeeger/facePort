.class public final synthetic Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->lambda$new$0(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method
