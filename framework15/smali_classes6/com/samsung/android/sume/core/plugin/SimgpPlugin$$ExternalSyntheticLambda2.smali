.class public final synthetic Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    return-void
.end method


# virtual methods
.method public final blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->lambda$bindToFixture$2$com-samsung-android-sume-core-plugin-SimgpPlugin(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p1

    return-object p1
.end method
