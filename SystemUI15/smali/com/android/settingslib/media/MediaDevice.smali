.class public abstract Lcom/android/settingslib/media/MediaDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mConnectedRecord:I

.field public final mContext:Landroid/content/Context;

.field public final mItem:Landroid/media/RouteListingPreference$Item;

.field public mRangeZone:I

.field public final mRouteInfo:Landroid/media/MediaRoute2Info;

.field public mState:I

.field mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;Landroid/media/RouteListingPreference$Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    iput-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    const/4 p1, 0x5

    if-nez p2, :cond_0

    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    const/16 v0, 0x16

    if-eq p2, v0, :cond_4

    const/16 v0, 0x17

    if-eq p2, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_4

    const/16 v0, 0x3eb

    if-eq p2, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_3
    :pswitch_0
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_4
    :pswitch_1
    iput p3, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_5
    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto/16 :goto_1

    :cond_2
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v1, p1, Lcom/android/settingslib/media/MediaDevice;->mState:I

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    iget v3, p1, Lcom/android/settingslib/media/MediaDevice;->mType:I

    if-ne v1, v3, :cond_10

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    iget v3, p1, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    invoke-static {v1, v3}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    move-result v1

    if-eqz v1, :cond_b

    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    iget p1, p1, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    invoke-static {p0, p1}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    move-result v0

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    iget v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    iget v1, p1, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    if-eq v0, v1, :cond_f

    if-gtz v1, :cond_e

    if-lez v0, :cond_f

    :cond_e
    sub-int v0, v1, v0

    goto :goto_1

    :cond_f
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_10
    if-ge v1, v3, :cond_1

    :goto_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settingslib/media/MediaDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentVolume()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-nez v0, :cond_0

    const-string p0, "MediaDevice"

    const-string v0, "Unable to get current volume. RouteInfo is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    return p0
.end method

.method public getDevice()I
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public final getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    return p0
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconWithoutBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSelectionBehavior()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getSelectionBehavior()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getSubtextString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/media/RouteListingPreference$Item;->getSubText()I

    move-result v1

    const/16 v2, 0x2710

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const v0, 0x7f130bda

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f130bdc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f130bd7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f130bdb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f130bd8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f130bd9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f130bdd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/RouteListingPreference$Item;->getCustomSubtextMessage()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasOngoingSession()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final initDeviceRecord()V
    .locals 5

    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    const-string v2, "seamless_transfer_record"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_selected_device"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    monitor-enter v0

    :try_start_1
    const-string v4, "seamless_transfer_record"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iput v1, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public isCarKitDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isConnected()Z
.end method

.method public isFastPairDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isHostForOngoingSession()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isMutingExpectedDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSuggestedDevice()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
