.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final modeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;->modeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(I)Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;->modeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;->newInstance(I)Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController_Factory;->get()Lcom/android/systemui/bixby2/controller/mediacontrol/PlayLastSongController;

    move-result-object p0

    return-object p0
.end method
