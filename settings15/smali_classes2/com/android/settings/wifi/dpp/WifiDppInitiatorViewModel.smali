.class public final Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBandArray:[I

.field public mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

.field public mIsWifiDppHandshaking:Z

.field public mStatusCode:Landroidx/lifecycle/MutableLiveData;

.field public mTriedChannels:Landroid/util/SparseArray;

.field public mTriedSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method
