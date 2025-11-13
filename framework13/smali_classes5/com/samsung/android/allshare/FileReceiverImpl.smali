.class final Lcom/samsung/android/allshare/FileReceiverImpl;
.super Lcom/samsung/android/allshare/file/FileReceiver;
.source "FileReceiverImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;,
        Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "FileReceiverImpl"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mCancelReq:Z

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mIsSubscribed:Z

.field private blacklist mProgressEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

.field private blacklist mReceiver:Lcom/samsung/android/allshare/file/FileReceiver;

.field private blacklist mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private blacklist mSessionKeyInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeKeyInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgressEventListener(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReceiver(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mReceiver:Lcom/samsung/android/allshare/file/FileReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FileReceiverImpl;->getSessionKeyInfoMap(Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FileReceiverImpl;->getTimeKeyInfoMap(Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/FileReceiverImpl;->isCancelRequest()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/FileReceiverImpl;->putSessionKeyInfoMap(Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseCancelRequest(Lcom/samsung/android/allshare/FileReceiverImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/FileReceiverImpl;->releaseCancelRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSessionKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FileReceiverImpl;->removeSessionKeyInfoMap(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveTimeKeyInfoMap(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FileReceiverImpl;->removeTimeKeyInfoMap(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 4
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/allshare/file/FileReceiver;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mReceiver:Lcom/samsung/android/allshare/file/FileReceiver;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    .line 317
    new-instance v0, Lcom/samsung/android/allshare/FileReceiverImpl$2;

    .line 318
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$2;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 492
    new-instance v0, Lcom/samsung/android/allshare/FileReceiverImpl$3;

    .line 493
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/FileReceiverImpl$3;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 590
    new-instance v0, Lcom/samsung/android/allshare/FileReceiverImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/FileReceiverImpl$4;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 104
    const-string v0, "FileReceiverImpl"

    if-nez p1, :cond_0

    .line 106
    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->setProgressUpdateEventListener(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 118
    iput-object p0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mReceiver:Lcom/samsung/android/allshare/file/FileReceiver;

    .line 119
    return-void
.end method

.method private blacklist getSessionKeyInfoMap(Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSessionKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    .line 218
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    return-object v0
.end method

.method private blacklist getTimeKeyInfoMap(Ljava/lang/String;)Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    return-object v0
.end method

.method private blacklist isCancelRequest()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mCancelReq:Z

    return v0
.end method

.method private blacklist putSessionKeyInfoMap(Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putSessionKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    .line 212
    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;-><init>(ILcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 213
    .local v0, "sessionKeyInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    iget-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private blacklist putTimeKeyInfoMap(Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sessionInfo"    # Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putTimeKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getCount()I

    move-result v1

    .line 233
    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;-><init>(ILcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 234
    .local v0, "timeKeyInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    iget-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method private blacklist releaseCancelRequest()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 201
    return-void
.end method

.method private blacklist removeSessionKeyInfoMap(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mSessionKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeSessionKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    .line 225
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private blacklist removeTimeKeyInfoMap(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTimeKeyInfoMap() called. key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mTimeKeyInfoMap:Ljava/util/HashMap;

    .line 245
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v1, "FileReceiverImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private blacklist setCancelRequest()V
    .locals 1

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mCancelReq:Z

    .line 197
    return-void
.end method

.method private blacklist setProgressUpdateEventListener(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 254
    iget-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 256
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 255
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 258
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 260
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 259
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    .line 265
    :cond_2
    :goto_0
    return-void

    .line 250
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist cancel(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    .line 179
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 180
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_CANCEL"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 183
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "BUNDLE_STRING_SESSIONID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sessionID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileReceiverImpl"

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/allshare/FileReceiverImpl;->setCancelRequest()V

    .line 192
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 152
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    new-instance v1, Lcom/samsung/android/allshare/FileReceiverImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/allshare/FileReceiverImpl$1;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/allshare/AllShareResponseHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    return-object v0

    .line 743
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/allshare/FileReceiverImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    const-string v1, "FileReceiverImpl"

    if-nez v0, :cond_0

    .line 770
    const-string v0, "getP2pMacAddress : mDeviceImpl == null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, ""

    return-object v0

    .line 774
    :cond_0
    const-string v0, "getP2pMacAddress"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 812
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 813
    const-string v0, ""

    return-object v0

    .line 815
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    .line 782
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 822
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 807
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 800
    const-string v0, ""

    return-object v0

    .line 802
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 829
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 830
    const/4 v0, 0x0

    return v0

    .line 832
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist receive(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 14
    .param p3, "senderName"    # Ljava/lang/String;
    .param p4, "isFolder"    # Ljava/lang/Boolean;
    .param p5, "parentFolder"    # Ljava/lang/String;
    .param p6, "responseListener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .param p7, "eventListener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;",
            "Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;",
            ")V"
        }
    .end annotation

    .line 683
    .local p1, "filelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p2, "urilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    iget-object v1, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v10, p5

    move-object/from16 v12, p7

    goto/16 :goto_4

    .line 689
    :cond_0
    if-eqz v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v10, p5

    move-object/from16 v12, p7

    goto/16 :goto_3

    .line 702
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urilist size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filelist size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileReceiverImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v1, "filePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v2, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 707
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 708
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 710
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    goto :goto_0

    .line 712
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 713
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 716
    :cond_4
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 717
    .local v3, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_FILE_ARRAYLIST_RECEIVER_RECEIVE"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v3}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 720
    .local v4, "bundle":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BUNDLE_STRING_ID"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v5, "BUNDLE_STRING_NAME"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v5, "BUNDLE_STRING_ARRAYLIST_FILE_PATH"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 723
    const-string v5, "BUNDLE_STRING_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 724
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "BUNDLE_BOOLEAN_FOLDER"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 725
    const-string v5, "BUNDLE_STRING_PARENTFOLDER"

    move-object/from16 v10, p5

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "timeKey":Ljava/lang/String;
    const-string v6, "BUNDLE_STRING_UNIQUEKEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v6, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v12, p7

    invoke-direct {v6, v11, v9, v12}, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;-><init>(ILcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V

    .line 732
    .local v6, "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/allshare/FileReceiverImpl;->putTimeKeyInfoMap(Ljava/lang/String;Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;)V

    .line 734
    iget-object v11, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v13, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v11, v3, v13}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 736
    return-void

    .line 689
    .end local v1    # "filePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "timeKey":Ljava/lang/String;
    .end local v6    # "tempSessionInfo":Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
    :cond_5
    move-object/from16 v10, p5

    move-object/from16 v12, p7

    .line 690
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    new-instance v2, Lcom/samsung/android/allshare/FileReceiverImpl$5;

    invoke-direct {v2, p0, v9, v7, v8}, Lcom/samsung/android/allshare/FileReceiverImpl$5;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/allshare/AllShareResponseHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    return-void

    .line 683
    :cond_6
    move-object/from16 v10, p5

    move-object/from16 v12, p7

    .line 684
    :goto_4
    iget-object v2, v0, Lcom/samsung/android/allshare/FileReceiverImpl;->mReceiver:Lcom/samsung/android/allshare/file/FileReceiver;

    sget-object v6, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    const-string v3, ""

    move-object/from16 v1, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/file/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 686
    return-void
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/allshare/FileReceiverImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 748
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mIsSubscribed:Z

    .line 751
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 790
    const-string v0, "FileReceiverImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 792
    return-void

    .line 794
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/DeviceImpl;->requestMobileToTV(Ljava/lang/String;I)V

    .line 795
    return-void
.end method
