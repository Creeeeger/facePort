.class public final synthetic Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda1;
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

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$lambda$9jQk9an_s2pZsg-Kx9r0tMvYlF8(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
