.class Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionInfo"
.end annotation


# instance fields
.field private blacklist mCount:I

.field private blacklist mEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

.field private blacklist mResponseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

.field private blacklist mState:I


# direct methods
.method public constructor blacklist <init>(ILcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "responseListener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .param p3, "eventListener"    # Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 61
    iput v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 65
    iput p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 66
    iput-object p2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    .line 67
    iput-object p3, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist completed()Z
    .locals 3

    .line 83
    iget v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 84
    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 85
    iput v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 86
    return v1

    .line 89
    :cond_0
    return v2
.end method

.method public blacklist getCount()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    return v0
.end method

.method public blacklist getEventListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    return-object v0
.end method

.method public blacklist getResponseListener()Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverReceiveResponseListener;

    return-object v0
.end method

.method public blacklist removed()Z
    .locals 3

    .line 93
    iget v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 94
    const/4 v2, -0x2

    if-gt v0, v2, :cond_0

    .line 95
    iput v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 96
    return v1

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
