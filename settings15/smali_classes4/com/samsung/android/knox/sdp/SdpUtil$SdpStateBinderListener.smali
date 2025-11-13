.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public static bridge synthetic -$$Nest$mgetListener(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    new-instance p2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V

    return-void
.end method

.method private getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    return-object p0
.end method


# virtual methods
.method public onEngineRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    return-void
.end method

.method public onStateChange(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->getMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    return-void
.end method
