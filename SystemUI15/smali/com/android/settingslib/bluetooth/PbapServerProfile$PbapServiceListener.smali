.class public final Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;)V

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
