.class public final synthetic Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-wide p3, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->lambda$onClientListUpdated$0(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/List;J)V

    return-void
.end method
