.class final Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmartClipRemoteRequestDispatcherProxy"
.end annotation


# instance fields
.field private blacklist DEBUG:Z

.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

.field private blacklist mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdispatchSmartClipMetaDataExtraction(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$1;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mGateway:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher$ViewRootImplGateway;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->isDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    return-void
.end method

.method private blacklist dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestData:Landroid/os/Parcelable;

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iput v1, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    iput v1, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->doExtractSmartClipData(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 4

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchSmartClipRemoteRequest : req id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartClipRemoteRequestDispatcher_ViewRootImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->mDispatcher:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;

    iget v1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    const-string v3, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestDispatcher;->checkPermission(Ljava/lang/String;II)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;-><init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
