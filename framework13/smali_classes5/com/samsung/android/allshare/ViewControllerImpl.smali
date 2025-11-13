.class final Lcom/samsung/android/allshare/ViewControllerImpl;
.super Lcom/samsung/android/allshare/media/ViewController;
.source "ViewControllerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_CONTROL_MULTI_TOUCH_BEGIN:I = 0x25

.field private static final blacklist EVENT_CONTROL_MULTI_TOUCH_END:I = 0x26

.field private static final blacklist EVENT_CONTROL_MULTI_TOUCH_MOVE:I = 0x27

.field private static final blacklist EVENT_CONTROL_TOUCH_GESTURE_MOVE:I = 0xd

.field private static final blacklist EVENT_CONTROL_TOUCH_GESTURE_UP:I = 0xc

.field private static final blacklist MODE_TOUCH:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ViewControllerImpl"


# instance fields
.field private blacklist mAbsZoomRate:F

.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mControlEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private blacklist mEventListener:Lcom/samsung/android/allshare/media/ViewController$IEventListener;

.field private blacklist mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

.field private blacklist mIPAddress:Ljava/lang/String;

.field private blacklist mImageHeight:F

.field private blacklist mImageRatio:F

.field private blacklist mImageWidth:F

.field private blacklist mIsConnected:Z

.field private blacklist mIsSubscribed:Z

.field private blacklist mMACAddress:Ljava/lang/String;

.field private blacklist mMarginX:I

.field private blacklist mMarginY:I

.field private blacklist mMobileHeight:F

.field private blacklist mMobilePhoneRatio:F

.field private blacklist mMobileWidth:F

.field private blacklist mOrgCenterX:I

.field private blacklist mOrgCenterY:I

.field private blacklist mOrgX:I

.field private blacklist mOrgY:I

.field private blacklist mPrevAbsZoomRate:F

.field private blacklist mPrevAngle:I

.field private blacklist mRelativeZoomRate:F

.field private blacklist mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

.field private blacklist mTvHeight:F

.field private blacklist mTvOrgX:F

.field private blacklist mTvOrgX0:F

.field private blacklist mTvOrgY:F

.field private blacklist mTvOrgY0:F

.field private blacklist mTvRatio:F

.field private blacklist mTvWidth:F

.field private blacklist mZoomedImageHeight:F

.field private blacklist mZoomedImageWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Lcom/samsung/android/allshare/ViewControllerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAppComponent(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/IAppControlAPI;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsConnected(Lcom/samsung/android/allshare/ViewControllerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;II)V
    .locals 17
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;
    .param p3, "tvWidth"    # I
    .param p4, "tvHeight"    # I

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/media/ViewController;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    .line 59
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 61
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    .line 63
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    .line 65
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 67
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 69
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    .line 71
    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    .line 73
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    .line 75
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    .line 77
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 79
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 81
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 83
    iput-boolean v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    .line 85
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 87
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 89
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    .line 91
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 93
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 95
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 97
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 99
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 101
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 103
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 105
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 107
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 109
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 111
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvRatio:F

    .line 113
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 115
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 117
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    .line 119
    iput v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    .line 121
    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 123
    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 125
    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAngle:I

    .line 663
    new-instance v2, Lcom/samsung/android/allshare/ViewControllerImpl$1;

    .line 664
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/allshare/ViewControllerImpl$1;-><init>(Lcom/samsung/android/allshare/ViewControllerImpl;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 687
    new-instance v2, Lcom/samsung/android/allshare/ViewControllerImpl$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/allshare/ViewControllerImpl$2;-><init>(Lcom/samsung/android/allshare/ViewControllerImpl;)V

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mControlEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 705
    new-instance v2, Lcom/samsung/android/allshare/ViewControllerImpl$3;

    invoke-direct {v2, v0}, Lcom/samsung/android/allshare/ViewControllerImpl$3;-><init>(Lcom/samsung/android/allshare/ViewControllerImpl;)V

    iput-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventHandler:Landroid/os/Handler;

    .line 129
    if-nez v1, :cond_0

    .line 131
    const-string v2, "ViewControllerImpl"

    const-string v3, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 137
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 139
    nop

    .line 140
    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 141
    .local v4, "conManager":Landroid/net/ConnectivityManager;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 147
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v6, "wifi"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 148
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 149
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 151
    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 152
    iget-object v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 153
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "strMACPart":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x4

    if-lt v10, v11, :cond_2

    .line 162
    aget-object v10, v7, v3

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 163
    .local v10, "nTempMAC1":I
    aget-object v14, v7, v13

    invoke-static {v14, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 165
    .local v11, "nTempMAC2":I
    or-int/2addr v10, v12

    .line 166
    xor-int/lit16 v11, v11, 0x80

    .line 168
    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    const-string v15, "%02x"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v3

    .line 169
    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v3

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    .line 173
    .end local v10    # "nTempMAC1":I
    .end local v11    # "nTempMAC2":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v7, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v7, v12

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v7, v13

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x5

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    .line 186
    .end local v4    # "conManager":Landroid/net/ConnectivityManager;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v7    # "strMACPart":[Ljava/lang/String;
    :cond_3
    iput-object v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 188
    new-instance v3, Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-direct {v3}, Lcom/samsung/android/allshare/IAppControlAPI;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    .line 190
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    .line 192
    iget-object v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    .line 194
    move/from16 v4, p3

    int-to-float v5, v4

    iput v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    .line 195
    move/from16 v6, p4

    int-to-float v7, v6

    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    .line 196
    div-float/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvRatio:F

    .line 197
    return-void
.end method

.method private blacklist calcMargin()V
    .locals 5

    .line 458
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 459
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 460
    iput v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    goto :goto_0

    .line 462
    :cond_0
    iput v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 463
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 465
    :goto_0
    return-void
.end method

.method private blacklist calcMobileResolution()V
    .locals 5

    .line 399
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 404
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 410
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 411
    .local v2, "outSize":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 412
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    .line 413
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    .line 415
    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    .line 416
    return-void
.end method

.method private blacklist calcOrgImageResolution(II)V
    .locals 2
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I

    .line 419
    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 420
    int-to-float v1, p2

    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 421
    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 422
    return-void
.end method

.method private blacklist clacZoomedImageSize()V
    .locals 2

    .line 394
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    iget v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 395
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 396
    return-void
.end method

.method private blacklist getMagicRate()F
    .locals 6

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "tempWidth":F
    const/4 v1, 0x0

    .line 429
    .local v1, "magicRate":F
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v5, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 430
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 431
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    div-float/2addr v5, v2

    .end local v1    # "magicRate":F
    .local v5, "magicRate":F
    goto :goto_0

    .line 433
    .end local v5    # "magicRate":F
    .restart local v1    # "magicRate":F
    :cond_0
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float/2addr v5, v2

    .end local v1    # "magicRate":F
    .restart local v5    # "magicRate":F
    goto :goto_0

    .line 434
    .end local v5    # "magicRate":F
    .restart local v1    # "magicRate":F
    :cond_1
    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvRatio:F

    iget v5, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 435
    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 436
    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    div-float v5, v2, v3

    .end local v1    # "magicRate":F
    .restart local v5    # "magicRate":F
    goto :goto_0

    .line 438
    .end local v5    # "magicRate":F
    .restart local v1    # "magicRate":F
    :cond_2
    iget v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    mul-float/2addr v2, v4

    div-float v0, v2, v3

    .line 439
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float v5, v0, v2

    .end local v1    # "magicRate":F
    .restart local v5    # "magicRate":F
    goto :goto_0

    .line 443
    .end local v5    # "magicRate":F
    .restart local v1    # "magicRate":F
    :cond_3
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_4

    .line 444
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    div-float v5, v2, v3

    .end local v1    # "magicRate":F
    .restart local v5    # "magicRate":F
    goto :goto_0

    .line 446
    .end local v5    # "magicRate":F
    .restart local v1    # "magicRate":F
    :cond_4
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float v0, v2, v3

    .line 447
    iget v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    div-float v5, v0, v2

    .line 452
    .end local v1    # "magicRate":F
    .restart local v5    # "magicRate":F
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[zoom] magicRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewControllerImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return v5
.end method

.method private blacklist initZoom()V
    .locals 2

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    .line 353
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    .line 354
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 355
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    .line 356
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    .line 358
    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    .line 359
    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 360
    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 361
    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 362
    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 363
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 364
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 365
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 366
    iput v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 367
    return-void
.end method

.method private blacklist initZoomedImageSize(FF)V
    .locals 2
    .param p1, "mobileWidth"    # F
    .param p2, "mobileHeight"    # F

    .line 383
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    iget v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 384
    mul-float/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 385
    iput p2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    goto :goto_0

    .line 388
    :cond_0
    iput p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    .line 389
    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    .line 391
    :goto_0
    return-void
.end method

.method private blacklist innerDisconnect()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMouseDestroy()V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/IAppControlAPI;->stopControl()Z

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 247
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    if-eqz v1, :cond_2

    .line 248
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 249
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 251
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 255
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    .line 256
    return-void
.end method


# virtual methods
.method public blacklist connect()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/IAppControlAPI;->stopControl()Z

    move-result v0

    .line 224
    .local v0, "bRet":Z
    if-nez v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 227
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mControlEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/IAppControlAPI;->setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMACAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIPAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/allshare/IAppControlAPI;->startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 236
    .end local v0    # "bRet":Z
    :cond_2
    return-void

    .line 212
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_4

    .line 215
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onConnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 219
    :cond_4
    return-void
.end method

.method public blacklist disconnect()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_1

    .line 273
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 278
    return-void

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_3

    .line 284
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 286
    :cond_3
    return-void

    .line 261
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    if-eqz v0, :cond_5

    .line 262
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/allshare/media/ViewController$IResponseListener;->onDisconnectResponseReceived(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 266
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->innerDisconnect()V

    .line 268
    return-void
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getViewHeight()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    float-to-int v0, v0

    return v0

    .line 304
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getViewWidth()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    float-to-int v0, v0

    return v0

    .line 296
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    return v0

    .line 312
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist move(IIZ)V
    .locals 19
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "isReleased"    # Z

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v4, p1

    goto/16 :goto_1

    .line 617
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v1, :cond_3

    .line 618
    const/4 v1, 0x0

    .line 619
    .local v1, "mobileWidth":I
    const/4 v2, 0x0

    .line 620
    .local v2, "mobileHeight":I
    const/4 v3, 0x0

    .line 621
    .local v3, "widthRatio":F
    const/4 v4, 0x0

    .line 623
    .local v4, "heightRatio":F
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 624
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_1

    .line 625
    return-void

    .line 627
    :cond_1
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 628
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 635
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 636
    .local v7, "outSize":Landroid/graphics/Point;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 638
    iget v1, v7, Landroid/graphics/Point;->x:I

    .line 639
    iget v2, v7, Landroid/graphics/Point;->y:I

    .line 641
    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 642
    .end local v3    # "widthRatio":F
    .local v8, "widthRatio":F
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    int-to-float v9, v2

    div-float/2addr v3, v9

    .line 644
    .end local v4    # "heightRatio":F
    .local v3, "heightRatio":F
    move/from16 v4, p1

    int-to-float v9, v4

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 645
    .local v9, "tvX":I
    move/from16 v15, p2

    int-to-float v10, v15

    mul-float/2addr v10, v3

    float-to-int v14, v10

    .line 648
    .local v14, "tvY":I
    if-eqz p3, :cond_2

    .line 649
    iget-object v10, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/allshare/IAppControlAPI;->setTouchGestureTouchMode(I)V

    .line 650
    iget-object v10, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v11, 0xc

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 651
    move v12, v9

    move v13, v14

    move/from16 v18, v14

    .end local v14    # "tvY":I
    .local v18, "tvY":I
    move/from16 v14, v16

    move/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    .line 652
    iget-object v10, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v11, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v13, v18

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    goto :goto_0

    .line 657
    .end local v18    # "tvY":I
    .restart local v14    # "tvY":I
    :cond_2
    move/from16 v18, v14

    .end local v14    # "tvY":I
    .restart local v18    # "tvY":I
    iget-object v10, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v11, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v12, v9

    move/from16 v13, v18

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/allshare/IAppControlAPI;->sendTouchGestureEvent(IIIII)V

    goto :goto_0

    .line 617
    .end local v1    # "mobileWidth":I
    .end local v2    # "mobileHeight":I
    .end local v3    # "heightRatio":F
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "outSize":Landroid/graphics/Point;
    .end local v8    # "widthRatio":F
    .end local v9    # "tvX":I
    .end local v18    # "tvY":I
    :cond_3
    move/from16 v4, p1

    .line 661
    :goto_0
    return-void

    .line 614
    :cond_4
    move/from16 v4, p1

    .line 615
    :goto_1
    return-void
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 874
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 875
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 874
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    .line 877
    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/media/ViewController$IEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    .line 319
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 328
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 327
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 330
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 332
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 331
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsSubscribed:Z

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 320
    :cond_3
    :goto_1
    const-string v0, "ViewControllerImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public blacklist setResponseListener(Lcom/samsung/android/allshare/media/ViewController$IResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    .line 881
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ViewController$IResponseListener;

    .line 882
    return-void
.end method

.method public blacklist setViewAngle(I)V
    .locals 16
    .param p1, "angle"    # I

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 345
    iget-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v3, 0x25

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 346
    iget-object v9, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v10, 0x27

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v13, p1

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 347
    iget-object v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v2, 0x26

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 349
    :cond_1
    return-void

    .line 342
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist zoom(IIII)V
    .locals 18
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "zoomPercent"    # I
    .param p4, "angle"    # I

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v1, p3

    goto :goto_1

    .line 374
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 375
    iget-object v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v3, 0x25

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 376
    iget-object v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v8, 0x27

    move/from16 v1, p3

    int-to-double v9, v1

    move/from16 v11, p4

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 378
    iget-object v11, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v12, 0x26

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move/from16 v16, p1

    move/from16 v17, p2

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    goto :goto_0

    .line 374
    :cond_1
    move/from16 v1, p3

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_2
    move/from16 v1, p3

    .line 372
    :goto_1
    return-void
.end method

.method public blacklist zoom(IIIIII)V
    .locals 27
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "zoomPercent"    # I
    .param p4, "angle"    # I
    .param p5, "sourceWidth"    # I
    .param p6, "sourceHeight"    # I

    .line 469
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[zoom] cx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " zoomPercent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " angle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "ViewControllerImpl"

    invoke-static {v13, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 475
    :cond_0
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    float-to-int v4, v4

    const-string v14, " mTvOrgY : "

    const-string v15, " mTvOrgX : "

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v11, :cond_1

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    float-to-int v4, v4

    if-ne v4, v12, :cond_1

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAngle:I

    if-eq v4, v10, :cond_4

    .line 477
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[zoom] mImageWidth : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mImageHeight : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " sourceWidth : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " sourceHeight : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->initZoom()V

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMobileResolution()V

    .line 482
    invoke-direct {v0, v11, v12}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcOrgImageResolution(II)V

    .line 483
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {v0, v4, v7}, Lcom/samsung/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[zoom] mTvWidth : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mTvHeight : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mImageWidth : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageHeight:F

    cmpl-float v7, v4, v6

    if-ltz v7, :cond_2

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    cmpl-float v9, v7, v8

    if-ltz v9, :cond_2

    .line 489
    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 490
    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    goto :goto_0

    .line 491
    :cond_2
    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvRatio:F

    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageRatio:F

    cmpl-float v7, v7, v8

    const/4 v8, 0x0

    if-ltz v7, :cond_3

    .line 492
    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    iget v9, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float/2addr v9, v6

    mul-float/2addr v9, v4

    sub-float/2addr v7, v9

    div-float/2addr v7, v5

    float-to-int v4, v7

    int-to-float v4, v4

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 493
    iput v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    goto :goto_0

    .line 495
    :cond_3
    iput v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    .line 496
    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mImageWidth:F

    div-float/2addr v6, v7

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    .line 499
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[zoom] mTvOrgX0 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mTvOrgY0 : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX0:F

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    .line 503
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY0:F

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    .line 505
    iput v10, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAngle:I

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 508
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 509
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 512
    :cond_4
    iget-boolean v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIsConnected:Z

    if-eqz v4, :cond_f

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMobileResolution()V

    .line 515
    const/4 v4, 0x0

    .line 516
    .local v4, "isDoubleTapPinch":Z
    const/16 v6, 0x64

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAngle:I

    if-eq v8, v10, :cond_5

    goto :goto_1

    .line 530
    :cond_5
    int-to-float v8, v3

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 531
    iget v9, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    mul-float/2addr v9, v8

    iput v9, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 533
    cmpg-float v8, v9, v7

    if-gez v8, :cond_7

    .line 534
    if-ge v3, v6, :cond_6

    .line 535
    const/4 v3, 0x0

    .line 537
    .end local p3    # "zoomPercent":I
    .local v3, "zoomPercent":I
    :cond_6
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 538
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 539
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 540
    const/4 v4, 0x1

    .line 541
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {v0, v6, v8}, Lcom/samsung/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 544
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 545
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    move v9, v3

    move/from16 v16, v4

    goto :goto_2

    .line 533
    .end local v3    # "zoomPercent":I
    .restart local p3    # "zoomPercent":I
    :cond_7
    move v9, v3

    move/from16 v16, v4

    goto :goto_2

    .line 517
    :cond_8
    :goto_1
    if-ge v3, v6, :cond_9

    .line 518
    const/4 v3, 0x0

    .line 520
    .end local p3    # "zoomPercent":I
    .restart local v3    # "zoomPercent":I
    :cond_9
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    .line 521
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 522
    iput v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mAbsZoomRate:F

    .line 523
    const/4 v4, 0x1

    .line 524
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    iget v8, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-direct {v0, v6, v8}, Lcom/samsung/android/allshare/ViewControllerImpl;->initZoomedImageSize(FF)V

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 527
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 528
    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    move v9, v3

    move/from16 v16, v4

    .line 549
    .end local v3    # "zoomPercent":I
    .end local v4    # "isDoubleTapPinch":Z
    .local v9, "zoomPercent":I
    .local v16, "isDoubleTapPinch":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->clacZoomedImageSize()V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[zoom] mMobileWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMobileHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMobilePhoneRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobilePhoneRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRelativeZoomRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->getMagicRate()F

    move-result v17

    .line 557
    .local v17, "magicRate":F
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/allshare/ViewControllerImpl;->calcMargin()V

    .line 559
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    sub-int v3, v1, v3

    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 560
    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    sub-int v4, v2, v4

    iput v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 562
    const/4 v6, 0x0

    if-gez v3, :cond_a

    .line 563
    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    .line 565
    :cond_a
    if-gez v4, :cond_b

    .line 566
    iput v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    .line 568
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[zoom] mMarginX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMarginY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMarginY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOrgX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " mOrgY : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOrgCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mOrgCenterY : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "tvZoomCenterX":I
    const/4 v7, 0x0

    .line 575
    .local v7, "tvZoomCenterY":I
    if-eqz v16, :cond_c

    .line 576
    iget v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 577
    .end local v3    # "tvZoomCenterX":I
    .local v1, "tvZoomCenterX":I
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    .end local v7    # "tvZoomCenterY":I
    .local v3, "tvZoomCenterY":I
    goto :goto_3

    .line 579
    .end local v1    # "tvZoomCenterX":I
    .local v3, "tvZoomCenterX":I
    .restart local v7    # "tvZoomCenterY":I
    :cond_c
    iget v1, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    int-to-float v1, v1

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    div-float/2addr v1, v5

    mul-float v1, v1, v17

    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 580
    .end local v3    # "tvZoomCenterX":I
    .restart local v1    # "tvZoomCenterX":I
    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float v2, v2, v17

    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    add-float/2addr v2, v3

    float-to-int v3, v2

    .line 583
    .end local v7    # "tvZoomCenterY":I
    .local v3, "tvZoomCenterY":I
    :goto_3
    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageWidth:F

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileWidth:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_d

    .line 584
    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 587
    :cond_d
    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mZoomedImageHeight:F

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mMobileHeight:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_e

    .line 588
    iget v2, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v3, v2

    move v2, v3

    goto :goto_4

    .line 587
    :cond_e
    move v2, v3

    .line 590
    .end local v3    # "tvZoomCenterY":I
    .local v2, "tvZoomCenterY":I
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[zoom] tvCenterX : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tvCenterY : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    int-to-float v3, v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterX:I

    int-to-float v4, v4

    iget v5, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v5, v6

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    .line 595
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    int-to-float v3, v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgCenterY:I

    int-to-float v4, v4

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    .line 597
    iget-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v20, 0x25

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v3

    move/from16 v24, v1

    move/from16 v25, v2

    invoke-virtual/range {v19 .. v25}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 599
    iget-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v4, 0x27

    int-to-double v5, v9

    move/from16 v7, p4

    move-object/from16 v26, v8

    move v8, v1

    move/from16 v18, v9

    .end local v9    # "zoomPercent":I
    .local v18, "zoomPercent":I
    move v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 601
    iget-object v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mIAppComponent:Lcom/samsung/android/allshare/IAppControlAPI;

    const/16 v20, 0x26

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v25}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMultiTouchEvent(IDIII)V

    .line 604
    iget v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mRelativeZoomRate:F

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[zoom] mOrgX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mOrgY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mTvOrgY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[zoom] mPrevAbsZoomRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/allshare/ViewControllerImpl;->mPrevAbsZoomRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 512
    .end local v1    # "tvZoomCenterX":I
    .end local v2    # "tvZoomCenterY":I
    .end local v16    # "isDoubleTapPinch":Z
    .end local v17    # "magicRate":F
    .end local v18    # "zoomPercent":I
    .restart local p3    # "zoomPercent":I
    :cond_f
    move/from16 v18, v3

    .line 610
    .end local p3    # "zoomPercent":I
    .restart local v18    # "zoomPercent":I
    :goto_5
    return-void

    .line 473
    .end local v18    # "zoomPercent":I
    .restart local p3    # "zoomPercent":I
    :cond_10
    :goto_6
    return-void
.end method
