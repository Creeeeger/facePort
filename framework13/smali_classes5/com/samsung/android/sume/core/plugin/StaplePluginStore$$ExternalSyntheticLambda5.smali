.class public final synthetic Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->lambda$add$0(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;Landroid/content/Context;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object p1

    return-object p1
.end method
