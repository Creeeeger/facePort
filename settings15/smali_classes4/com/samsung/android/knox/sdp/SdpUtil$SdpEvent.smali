.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpEvent"
.end annotation


# static fields
.field static final ON_ENGINE_REMOVED:I = 0x2

.field static final ON_STATE_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    return-object p0
.end method
