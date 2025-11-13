.class final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->$context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->invoke()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    return-object p0
.end method
