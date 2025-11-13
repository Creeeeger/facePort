.class Lcom/samsung/android/knox/sdp/SdpUtil$EngineRemovedEvent;
.super Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineRemovedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$EngineRemovedEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    return-void
.end method
