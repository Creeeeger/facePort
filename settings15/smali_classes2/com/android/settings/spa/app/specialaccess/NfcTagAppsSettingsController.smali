.class public final Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _allowed:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/specialaccess/NfcTagAppsSettingsController;->_allowed:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
