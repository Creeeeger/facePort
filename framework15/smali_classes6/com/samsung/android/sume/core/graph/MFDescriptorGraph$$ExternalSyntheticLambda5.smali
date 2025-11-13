.class public final synthetic Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/util/Map;

.field public final synthetic blacklist f$2:Ljava/util/Map;

.field public final synthetic blacklist f$3:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

.field public final synthetic blacklist f$4:Lcom/samsung/android/sume/core/graph/GraphNode;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$3:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iput-object p5, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$4:Lcom/samsung/android/sume/core/graph/GraphNode;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$3:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iget-object v4, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$4:Lcom/samsung/android/sume/core/graph/GraphNode;

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->lambda$toMediaFilterGraph$3(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Lcom/samsung/android/sume/core/graph/GraphNode;Ljava/lang/Integer;)V

    return-void
.end method
