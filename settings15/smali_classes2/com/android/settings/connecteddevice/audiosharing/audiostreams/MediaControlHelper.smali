.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mLocalMediaManagers:Ljava/util/List;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalMediaManagers:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/MediaControlHelper;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method
