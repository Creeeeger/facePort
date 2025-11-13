.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->updateAnomalies(Ljava/util/List;)V

    return-void
.end method
