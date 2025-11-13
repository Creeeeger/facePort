.class Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;
.super Landroid/os/Handler;
.source "NetworkDiagnosisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/os/Looper;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 395
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "result"

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$3;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->-$$Nest$fgetmStepView(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
