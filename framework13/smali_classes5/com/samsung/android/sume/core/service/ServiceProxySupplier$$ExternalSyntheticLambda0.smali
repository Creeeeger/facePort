.class public final synthetic Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

.field public final synthetic blacklist f$1:Landroid/content/Context;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxySupplier;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iput-object p2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/service/ServiceProxySupplier;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sume/core/service/ServiceProxySupplier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/service/ServiceProxySupplier;->lambda$new$1$com-samsung-android-sume-core-service-ServiceProxySupplier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/service/ServiceProxy;

    move-result-object v0

    return-object v0
.end method
