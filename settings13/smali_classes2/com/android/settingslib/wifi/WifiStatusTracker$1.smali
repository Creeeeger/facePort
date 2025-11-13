.class Lcom/android/settingslib/wifi/WifiStatusTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public static synthetic $r8$lambda$oIldb5fe6U0ojUjymlkNvi16S3Y(Lcom/android/settingslib/wifi/WifiStatusTracker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->lambda$onLost$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rAjuo1d72P3VOtfiEDEqodlVgos(Lcom/android/settingslib/wifi/WifiStatusTracker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->lambda$onCapabilitiesChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0, p2}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    return-void
.end method

.method private synthetic lambda$onCapabilitiesChanged$0()V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mpostResults(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    return-void
.end method

.method private synthetic lambda$onLost$1()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mpostResults(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 96
    invoke-static {p2}, Lcom/android/settingslib/Utils;->tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v2, v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$sfgetSSDF()Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCapabilitiesChanged: "

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network="

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "networkCapabilities="

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mrecordLastWifiNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 118
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmDefaultNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;)Landroid/net/Network;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 119
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p2

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmDefaultNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    if-eq p2, v0, :cond_7

    .line 121
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v2, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$misNetworkFromSpecifier(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore network "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", default network "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiStatusTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_7
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result p2

    if-nez p2, :cond_9

    .line 131
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_8
    return-void

    .line 136
    :cond_9
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 137
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_a
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fputmPrimaryNetworkId(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V

    .line 140
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mupdateWifiInfo(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 141
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mupdateStatusLabel(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 142
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmMainThreadHandler(Lcom/android/settingslib/wifi/WifiStatusTracker;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$sfgetSSDF()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLost: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "network="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mrecordLastWifiNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmPrimaryNetworkId(Lcom/android/settingslib/wifi/WifiStatusTracker;)I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mupdateWifiInfo(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$mupdateStatusLabel(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    .line 161
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->-$$Nest$fgetmMainThreadHandler(Lcom/android/settingslib/wifi/WifiStatusTracker;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
