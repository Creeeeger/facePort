.class final Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $record:Lcom/android/settings/spa/app/AppRecordWithSize;

.field final synthetic this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/AppRecordWithSize;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    iput-object p2, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;->$record:Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v1, v1, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    const v1, 0x7f141a57

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;->this$0:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;

    iget-object p0, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    const v1, 0x7f140d0a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method
