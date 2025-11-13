.class final Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $onTileClicked:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

.field final synthetic $withBottomCornerRadius:Z

.field final synthetic $withTopCornerRadius:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;Lkotlin/jvm/functions/Function1;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "ZZI)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    iput-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$withTopCornerRadius:Z

    iput-boolean p4, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$withBottomCornerRadius:Z

    iput p5, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$tile:Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    iget-object v1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    iget-boolean v2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$withTopCornerRadius:Z

    iget-boolean v3, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$withBottomCornerRadius:Z

    iget p0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$Tile$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->Tile(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
