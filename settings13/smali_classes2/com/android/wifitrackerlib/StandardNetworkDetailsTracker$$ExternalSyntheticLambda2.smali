.class public final synthetic Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->$r8$lambda$HPzvZMo4sSoedq8K9zIWbnkPocc(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method
