.class public abstract Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final timeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->timeoutMs:I

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;
.end method

.method public getTimeoutMs()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->timeoutMs:I

    return p0
.end method

.method public abstract getWakeReason()Ljava/lang/String;
.end method

.method public abstract getWindowTitle()Ljava/lang/String;
.end method
