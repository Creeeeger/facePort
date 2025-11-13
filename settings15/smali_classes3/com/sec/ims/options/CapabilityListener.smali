.class public Lcom/sec/ims/options/CapabilityListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityListener"


# instance fields
.field private final EVT_CAP_CHANGED:I

.field private final EVT_CAP_PUBLISHED:I

.field private final EVT_MULTIPLE_CAP_CHANGED:I

.field private final EVT_OWN_CAP_CHANGED:I

.field callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

.field mHandler:Landroid/os/Handler;

.field protected mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_OWN_CAP_CHANGED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_MULTIPLE_CAP_CHANGED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_CAP_CHANGED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/ims/options/CapabilityListener;->EVT_CAP_PUBLISHED:I

    new-instance v0, Lcom/sec/ims/options/CapabilityListener$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/options/CapabilityListener$1;-><init>(Lcom/sec/ims/options/CapabilityListener;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    new-instance v0, Lcom/sec/ims/options/CapabilityListener$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/ims/options/CapabilityListener$2;-><init>(Lcom/sec/ims/options/CapabilityListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0

    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 0

    return-void
.end method
