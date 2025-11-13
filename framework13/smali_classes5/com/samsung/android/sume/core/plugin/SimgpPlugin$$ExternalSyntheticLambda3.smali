.class public final synthetic Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    return-void
.end method


# virtual methods
.method public final blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/SimgpPlugin$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/plugin/SimgpPlugin;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sume/core/plugin/SimgpPlugin;->$r8$lambda$W-pO5zD2F6XB3Mfc5uMFJLQFyGA(Lcom/samsung/android/sume/core/plugin/SimgpPlugin;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method
