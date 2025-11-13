.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilter;

    check-cast p1, Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->lambda$createImgpFilter$5(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    return-object p1
.end method
