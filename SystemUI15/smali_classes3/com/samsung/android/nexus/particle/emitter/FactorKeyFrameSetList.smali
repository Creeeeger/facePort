.class public Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public floatKeyFrameSetSize:I

.field public final list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    new-array v0, v0, [Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    new-array v0, v0, [Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iget-object v2, p1, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    array-length v3, v2

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
