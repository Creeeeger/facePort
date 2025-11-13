.class final Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;
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
.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->batteryDiffEntryState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/spa/app/appinfo/LoadingState;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    instance-of v1, v0, Lcom/android/settings/spa/app/appinfo/LoadingState$Loading;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->context:Landroid/content/Context;

    const v0, 0x7f142e0a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/settings/spa/app/appinfo/LoadingState$Done;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/settings/spa/app/appinfo/LoadingState$Done;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/LoadingState$Done;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->context:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1405eb

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->context:Landroid/content/Context;

    const v0, 0x7f141a2c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p0, v1

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    const-string p0, ""

    :goto_1
    return-object p0
.end method
