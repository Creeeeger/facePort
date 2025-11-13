.class Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$2;
.super Landroid/os/SimpleClock;
.source "WifiDiagnosisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;Ljava/time/ZoneId;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$2;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
