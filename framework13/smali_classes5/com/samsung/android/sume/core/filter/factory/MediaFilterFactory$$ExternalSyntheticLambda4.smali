.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    check-cast p1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->lambda$init$3$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V

    return-void
.end method
