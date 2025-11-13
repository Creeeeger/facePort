.class public final Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    return-void
.end method


# virtual methods
.method public final onDataSaverChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverSummary;->getSwitchBar()Landroidx/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
