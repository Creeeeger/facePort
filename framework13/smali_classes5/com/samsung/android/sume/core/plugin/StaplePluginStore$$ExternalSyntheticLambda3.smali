.class public final synthetic Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/StaplePluginStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/plugin/StaplePluginStore;

    check-cast p1, Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->lambda$add$1$com-samsung-android-sume-core-plugin-StaplePluginStore(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
