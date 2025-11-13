.class public final Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final initialSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

.field public final sizes:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iput-object p1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    return-void
.end method
