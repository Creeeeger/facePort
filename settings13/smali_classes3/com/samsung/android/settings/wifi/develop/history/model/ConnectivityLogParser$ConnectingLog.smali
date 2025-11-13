.class Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;
.super Ljava/lang/Object;
.source "ConnectivityLogParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingLog"
.end annotation


# instance fields
.field akmSuite:Ljava/lang/String;

.field groupCipher:Ljava/lang/String;

.field pairwiseCipher:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser$ConnectingLog;->this$0:Lcom/samsung/android/settings/wifi/develop/history/model/ConnectivityLogParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
