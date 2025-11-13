.class public final Lcom/google/android/setupcompat/logging/SetupMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "SetupMetricsLogger"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V
    .locals 6

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CustomEvent_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v4, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    const-string v2, "CustomEvent_timestamp"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    invoke-static {v2}, Lcom/google/android/setupcompat/logging/MetricKey;->fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "CustomEvent_metricKey"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/PersistableBundle;

    iget-object v4, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    invoke-direct {v2, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    sget-object v4, Lcom/google/android/setupcompat/internal/PersistableBundles;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    const-string v2, "CustomEvent_bundleValues"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    const-string p1, "CustomEvent_pii_bundleValues"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "CustomEvent_bundle"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/logging/SetupMetricsLogger;)V
    .locals 0

    return-void
.end method
