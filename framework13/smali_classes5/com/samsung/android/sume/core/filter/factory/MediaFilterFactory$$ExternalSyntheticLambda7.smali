.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->lambda$newFilter$6(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
