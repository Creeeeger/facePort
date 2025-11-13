.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;

.field public final synthetic blacklist f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda10;->f$1:Landroid/util/Pair;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->lambda$createNNFilter$7(Landroid/content/Context;Landroid/util/Pair;Ljava/lang/String;)Lcom/samsung/android/sume/core/types/nn/NNFileDescriptor;

    move-result-object p1

    return-object p1
.end method
