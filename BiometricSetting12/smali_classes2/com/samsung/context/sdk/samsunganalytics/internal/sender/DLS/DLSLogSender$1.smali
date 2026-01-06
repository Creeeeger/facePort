.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;
.source "DLSLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->send(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->val$networkType:I

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_0
    invoke-virtual {v0, v1, v2, p3, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->insert(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->val$networkType:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->useQuota(Landroid/content/Context;II)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
