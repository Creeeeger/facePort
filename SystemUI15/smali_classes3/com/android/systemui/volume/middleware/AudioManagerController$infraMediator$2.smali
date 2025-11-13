.class final Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;
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
.field final synthetic $volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;->$volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;->$volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    check-cast p0, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-object p0
.end method
