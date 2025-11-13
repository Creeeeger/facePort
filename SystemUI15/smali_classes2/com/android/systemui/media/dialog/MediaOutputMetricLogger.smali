.class public final Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mConnectedBluetoothDeviceCount:I

.field public final mContext:Landroid/content/Context;

.field public final mPackageName:Ljava/lang/String;

.field public mRemoteDeviceCount:I

.field public mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

.field public mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

.field public mWiredDeviceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputMetricLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static getInteractionDeviceType(Lcom/android/settingslib/media/MediaDevice;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x1f4

    return p0

    :cond_2
    const/16 p0, 0x190

    return p0

    :cond_3
    const/16 p0, 0x12c

    return p0

    :cond_4
    const/16 p0, 0x64

    return p0

    :cond_5
    const/16 p0, 0xc8

    return p0

    :cond_6
    return v1
.end method

.method public static getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p0, 0x258

    return p0

    :pswitch_2
    const/16 p0, 0x1f4

    return p0

    :pswitch_3
    const/16 p0, 0x190

    return p0

    :pswitch_4
    const/16 p0, 0x12c

    return p0

    :pswitch_5
    const/16 p0, 0x64

    return p0

    :pswitch_6
    const/16 p0, 0xc8

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getLoggingPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is invalid."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaOutputMetricLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final updateLoggingMediaItemCount(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/dialog/MediaItem;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    goto :goto_0

    :cond_4
    sget-boolean p1, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connected devices: wired: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bluetooth: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " remote: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    const-string v0, "MediaOutputMetricLogger"

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    return-void
.end method
