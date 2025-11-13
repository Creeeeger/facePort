.class public final Lcom/android/settings/spa/network/AirplaneModeController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;


# instance fields
.field public final _airplaneModeState:Landroidx/lifecycle/MutableLiveData;

.field public final airplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModeController;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/spa/network/AirplaneModeController;->airplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/network/AirplaneModeController;->_airplaneModeState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final onAirplaneModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/network/AirplaneModeController;->_airplaneModeState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
