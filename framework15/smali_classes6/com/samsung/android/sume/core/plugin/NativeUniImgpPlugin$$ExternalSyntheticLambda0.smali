.class public final synthetic Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

.field public final synthetic blacklist f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    iput-object p3, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    iget-object v1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->lambda$encode$1$com-samsung-android-sume-core-plugin-NativeUniImgpPlugin(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/HashMap;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
