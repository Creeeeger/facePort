.class public final synthetic Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

.field public final synthetic blacklist f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    iget-object v1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda19;->f$1:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lambda$makeBufferFromMap$4$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Ljava/util/HashMap;I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
