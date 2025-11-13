.class public final Lcom/android/systemui/qs/tiles/base/interactor/DataUpdateTrigger$UserInput;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/DataUpdateTrigger;


# instance fields
.field public final input:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DataUpdateTrigger$UserInput;->input:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    return-void
.end method
