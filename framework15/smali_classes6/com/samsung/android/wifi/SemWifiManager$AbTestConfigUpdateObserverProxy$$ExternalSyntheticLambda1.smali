.class public final synthetic Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;

.field public final synthetic blacklist f$1:Lcom/samsung/android/wifi/SemAbTestConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;

    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/SemAbTestConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/wifi/SemAbTestConfiguration;

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;->$r8$lambda$wIBGXRB_0G-dYudRY7RkmY_zCWs(Lcom/samsung/android/wifi/SemWifiManager$AbTestConfigUpdateObserverProxy;Lcom/samsung/android/wifi/SemAbTestConfiguration;)V

    return-void
.end method
