.class public final synthetic Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/UpdatableImageFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/UpdatableImageFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/format/UpdatableImageFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/sume/core/format/UpdatableImageFormat;

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;->lambda$getCroppedRect$0$com-samsung-android-sume-core-format-UpdatableImageFormat([I)[I

    move-result-object p1

    return-object p1
.end method
