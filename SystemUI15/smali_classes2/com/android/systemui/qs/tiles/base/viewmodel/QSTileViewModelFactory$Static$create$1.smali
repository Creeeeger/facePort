.class final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$1;
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
.field final synthetic $userActionInteractor:Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$1;->$userActionInteractor:Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelFactory$Static$create$1;->$userActionInteractor:Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;

    return-object p0
.end method
