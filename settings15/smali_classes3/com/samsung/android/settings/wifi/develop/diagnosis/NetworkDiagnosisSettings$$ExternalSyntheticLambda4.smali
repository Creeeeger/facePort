.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$1:Landroid/net/Network;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;-><init>(Landroid/content/Context;Landroid/net/Network;)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/wifi/develop/utils/WifiDevelopmentConnectivityChecker;->getDnsTestStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->result:Ljava/lang/String;

    iget-object p0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mHandler:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
