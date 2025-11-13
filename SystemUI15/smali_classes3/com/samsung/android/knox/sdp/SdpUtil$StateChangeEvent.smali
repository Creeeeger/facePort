.class Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;
.super Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public state:I

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    iput p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->state:I

    return-void
.end method
