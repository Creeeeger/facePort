.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendUserAgreementState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->val$deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->val$timestamp:J

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "SATerms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->val$deviceId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;->val$timestamp:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
