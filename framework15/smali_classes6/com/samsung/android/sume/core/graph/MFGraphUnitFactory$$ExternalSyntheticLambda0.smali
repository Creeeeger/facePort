.class public final synthetic Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    return-void
.end method


# virtual methods
.method public final blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sume/core/graph/MFGraphUnitFactory;->parallelizeFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p1

    return-object p1
.end method
