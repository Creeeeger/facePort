.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    iget-object v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendProperties(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method
