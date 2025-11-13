.class Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;
.super Ljava/util/HashMap;
.source "SurfaceChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ColorFormat;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 37
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7fa30c04

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

    new-array v1, v1, [I

    const/16 v2, 0x105

    aput v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
