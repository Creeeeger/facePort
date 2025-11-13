.class public Lcom/samsung/android/ims/SemCmcMediaRecorder;
.super Ljava/lang/Object;
.source "SemCmcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;,
        Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;
    }
.end annotation


# static fields
.field public static final blacklist CMC_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist CMC_RECORDER_INFO_DURATION_IN_PROGRESS:I = 0x385

.field public static final blacklist CMC_RECORDER_INFO_FILESIZE_IN_PROGRESS:I = 0x384

.field public static final blacklist CMC_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final blacklist CMC_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final blacklist CMC_RECORDER_SUCCESS:I = 0x0

.field private static final blacklist EVENT_PAUSE:I = 0x4

.field private static final blacklist EVENT_PREPARE:I = 0x1

.field private static final blacklist EVENT_RELEASE:I = 0x7

.field private static final blacklist EVENT_RESET:I = 0x6

.field private static final blacklist EVENT_RESUME:I = 0x5

.field private static final blacklist EVENT_START:I = 0x2

.field private static final blacklist EVENT_STOP:I = 0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist STATE_DATASOURCE_CONFIGURED:I = 0x3

.field private static final blacklist STATE_ERROR:I = 0x7

.field private static final blacklist STATE_INITIAL:I = 0x1

.field private static final blacklist STATE_INITIALIZED:I = 0x2

.field private static final blacklist STATE_PREPARED:I = 0x4

.field private static final blacklist STATE_RECORDING:I = 0x5

.field private static final blacklist STATE_RELEASED:I = 0x6

.field private static final blacklist STATE_UNKNOWN:I = 0x8


# instance fields
.field blacklist mImsService:Lcom/samsung/android/ims/SemImsService;

.field private blacklist mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

.field private blacklist mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

.field private blacklist mPhoneId:I

.field private blacklist mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Lcom/samsung/android/ims/SemCmcMediaRecorder;)Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/samsung/android/ims/SemCmcMediaRecorder;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-direct {v0}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 81
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/ims/SemImsService;I)V
    .locals 3
    .param p1, "imsService"    # Lcom/samsung/android/ims/SemImsService;
    .param p2, "phoneId"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-direct {v0}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 85
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    .line 86
    iput p2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    .line 89
    :try_start_0
    new-instance v0, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemCmcMediaRecorder$1;-><init>(Lcom/samsung/android/ims/SemCmcMediaRecorder;)V

    iget v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/ims/SemImsService;->registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist getSemCmcRecordingInfo()Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    return-object v0
.end method

.method public whitelist pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    nop

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current stats is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x7

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 285
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    .line 287
    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    .line 288
    iput-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    nop

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioChannels(I)V
    .locals 3
    .param p1, "numChannels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 466
    if-lez p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioChannels(I)V

    .line 470
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioEncoder(I)V
    .locals 3
    .param p1, "audio_encoder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioEncoder(I)V

    .line 518
    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioEncodingBitRate(I)V
    .locals 3
    .param p1, "bitRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 442
    if-lez p1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioEncodingBitRate(I)V

    .line 446
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioSamplingRate(I)V
    .locals 3
    .param p1, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 488
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 494
    if-lez p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioSamplingRate(I)V

    .line 498
    return-void

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioSource(I)V
    .locals 3
    .param p1, "audio_source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAudioSource(I)V

    .line 313
    iput v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    .line 314
    return-void
.end method

.method public whitelist setAuthor(I)V
    .locals 3
    .param p1, "author"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 592
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "param-meta-author="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setAuthor(Ljava/lang/String;)V

    .line 597
    return-void

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDurationInterval(I)V
    .locals 3
    .param p1, "duration_inverval_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDurationInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 535
    if-lez p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setDurationInterval(I)V

    .line 540
    return-void

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration interval is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFileSizeInterval(J)V
    .locals 3
    .param p1, "file_size_interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFileSizeInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 557
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setFileSizeInterval(J)V

    .line 562
    return-void

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File size interval is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaxDuration(I)V
    .locals 3
    .param p1, "max_duration_ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMaxDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 393
    if-lez p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setMaxDuration(I)V

    .line 398
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max duration is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaxFileSize(J)V
    .locals 3
    .param p1, "max_filesize_bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMaxFileSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setMaxFileSize(J)V

    .line 369
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max file size is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnErrorListener(Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    .line 657
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnErrorListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnErrorListener;

    .line 660
    return-void
.end method

.method public whitelist setOnInfoListener(Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    .line 626
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput-object p1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mOnInfoListener:Lcom/samsung/android/ims/SemCmcMediaRecorder$OnInfoListener;

    .line 629
    return-void
.end method

.method public whitelist setOutputFormat(I)V
    .locals 3
    .param p1, "output_format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setOutputFormat(I)V

    .line 339
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    .line 340
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOutputPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "output_absolute_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOutputPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->setOutputPath(Ljava/lang/String;)V

    .line 421
    return-void

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output absolute path is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 154
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mImsService:Lcom/samsung/android/ims/SemImsService;

    iget-object v1, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mSemCmcRecordingInfo:Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mPhoneId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/ims/SemImsService;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ims/SemCmcMediaRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
