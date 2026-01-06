.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->makeActivityLifecycleCallbacks()Landroid/app/Application$ActivityLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendLog(Ljava/util/Map;Z)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
