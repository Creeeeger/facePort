.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/Callback<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->onResult(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onResult(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->enableDatabaseBuffering(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
