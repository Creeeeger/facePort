.class public final Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPbap;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return-void
.end method
