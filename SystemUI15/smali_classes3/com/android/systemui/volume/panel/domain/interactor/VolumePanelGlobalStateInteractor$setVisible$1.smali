.class final Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $isVisible:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;->$isVisible:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;->$isVisible:Z

    new-instance p1, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/panel/shared/model/VolumePanelGlobalState;-><init>(Z)V

    return-object p1
.end method
