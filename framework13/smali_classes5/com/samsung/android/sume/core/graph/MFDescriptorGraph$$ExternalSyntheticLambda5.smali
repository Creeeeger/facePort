.class public final synthetic Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/graph/MFGraph$Builder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->lambda$toMediaFilterGraph$4(Lcom/samsung/android/sume/core/graph/MFGraph$Builder;Ljava/util/List;Landroid/util/Pair;)V

    return-void
.end method
