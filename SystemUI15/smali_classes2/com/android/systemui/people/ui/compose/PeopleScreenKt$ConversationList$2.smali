.class final Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;
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

.field final synthetic $headerTextResource:I

.field final synthetic $onTileClicked:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Lkotlin/jvm/functions/Function1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            "I)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$headerTextResource:I

    iput-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$tiles:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$headerTextResource:I

    iget-object v0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$tiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$onTileClicked:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$ConversationList$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->ConversationList(ILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
