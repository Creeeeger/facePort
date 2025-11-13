.class public final Lcom/android/settings/datausage/DataSaverSummary$setSwitchBarChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$setSwitchBarChangeListener$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string p1, "newValue"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary$setSwitchBarChangeListener$1;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z

    const/4 v2, 0x1

    if-nez p2, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z

    iget-object p2, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    const/16 p1, 0x1bbc

    const/16 p2, 0x1bbd

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p1, "dataSaverBackend"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0

    throw p1
.end method
