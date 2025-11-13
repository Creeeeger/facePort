.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$1:Landroid/net/Network;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;-><init>(Landroid/content/Context;Landroid/net/Network;)V

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getDnsTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;

    const/4 v6, 0x1

    invoke-direct {v2, v0, v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v1

    const-string v2, " )\n"

    const-string v6, "\n"

    const/4 v7, 0x3

    if-eq v1, v7, :cond_0

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v8, "HTTP request bypass private DNS\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HTTP request private DNS ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpTest(Ljava/lang/String;)V

    :goto_0
    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;

    new-instance v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;

    const/4 v8, 0x2

    invoke-direct {v3, v0, v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v7, :cond_1

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    const-string v3, "HTTPS request bypass private DNS\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "HTTPS request private DNS ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->runHttpsTest(Ljava/lang/String;)V

    :goto_1
    iget-object p0, v4, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->mLatestProbeRequest:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
