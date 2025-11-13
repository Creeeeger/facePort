.class public Lcom/samsung/android/ims/options/SemCapabilityListener;
.super Ljava/lang/Object;
.source "SemCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemCapabilityListener"


# instance fields
.field private final blacklist EVT_CAP_CHANGED:I

.field private final blacklist EVT_CAP_PUBLISHED:I

.field private final blacklist EVT_MULTIPLE_CAP_CHANGED:I

.field private final blacklist EVT_OWN_CAP_CHANGED:I

.field blacklist callback:Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/ims/options/SemCapabilityListener;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_OWN_CAP_CHANGED:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_MULTIPLE_CAP_CHANGED:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_CAP_CHANGED:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->EVT_CAP_PUBLISHED:I

    .line 117
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ims/options/SemCapabilityListener$1;-><init>(Lcom/samsung/android/ims/options/SemCapabilityListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;-><init>(Lcom/samsung/android/ims/options/SemCapabilityListener;Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate-IA;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

    .line 71
    return-void
.end method


# virtual methods
.method protected blacklist getToken()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

    iget-object v0, v0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 0
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemImsUri;
    .param p2, "cap"    # Lcom/samsung/android/ims/options/SemCapabilities;

    .line 50
    return-void
.end method

.method public whitelist onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 58
    return-void
.end method

.method public whitelist onOwnCapabilitiesChanged()V
    .locals 0

    .line 41
    return-void
.end method

.method protected blacklist setToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

    iput-object p1, v0, Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;->mToken:Ljava/lang/String;

    .line 87
    return-void
.end method
