.class Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;
.super Ljava/lang/Object;
.source "IssueDetectorLogParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TryToConnectLog"
.end annotation


# instance fields
.field security:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->this$0:Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
