.class public final synthetic Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

    iput-wide p2, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;

    iget-wide v1, p0, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback$SemWifiApClientListUpdateCallbackProxy;->lambda$onOverallDataLimitChanged$1(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;J)V

    return-void
.end method
