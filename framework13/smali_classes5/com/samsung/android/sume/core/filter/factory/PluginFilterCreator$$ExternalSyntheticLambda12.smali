.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/NNPlugin;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/sume/core/plugin/NNPlugin;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;->f$1:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/sume/core/plugin/NNPlugin;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda12;->f$1:Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->lambda$createNNFilter$9(Lcom/samsung/android/sume/core/plugin/NNPlugin;Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
