.class public final synthetic Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$lambda$Pqs1Jb1HWqh6c0N1RWW9i1F3GWk(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)Z

    move-result p0

    return p0
.end method
