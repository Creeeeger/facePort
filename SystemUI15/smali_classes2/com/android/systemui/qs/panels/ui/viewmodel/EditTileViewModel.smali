.class public final Lcom/android/systemui/qs/panels/ui/viewmodel/EditTileViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Lcom/android/systemui/common/shared/model/Text;

.field public final availableEditActions:Ljava/util/Set;

.field public final icon:Lcom/android/systemui/common/shared/model/Icon;

.field public final isCurrent:Z

.field public final label:Lcom/android/systemui/common/shared/model/Text;

.field public final tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/shared/model/Text;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/shared/TileSpec;",
            "Lcom/android/systemui/common/shared/model/Icon;",
            "Lcom/android/systemui/common/shared/model/Text;",
            "Lcom/android/systemui/common/shared/model/Text;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/qs/panels/ui/viewmodel/AvailableEditActions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/EditTileViewModel;->availableEditActions:Ljava/util/Set;

    return-void
.end method
