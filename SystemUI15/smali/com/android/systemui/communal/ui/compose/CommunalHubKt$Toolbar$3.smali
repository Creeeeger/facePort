.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;
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

.field final synthetic $onEditDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onRemoveClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $removeEnabled:Z

.field final synthetic $setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $setToolbarSize:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "I)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$removeEnabled:Z

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onRemoveClicked:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$setToolbarSize:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onEditDone:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-boolean v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$removeEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onRemoveClicked:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$setToolbarSize:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$setRemoveButtonCoordinates:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$onEditDone:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$Toolbar(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
