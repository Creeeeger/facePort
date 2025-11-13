.class public final synthetic Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

.field public final synthetic blacklist f$1:Ljava/lang/Class;

.field public final synthetic blacklist f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->lambda$new$0$com-samsung-android-sume-core-service-ServiceProxySupplier(Ljava/lang/Class;Landroid/content/Context;)Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v0

    return-object v0
.end method
