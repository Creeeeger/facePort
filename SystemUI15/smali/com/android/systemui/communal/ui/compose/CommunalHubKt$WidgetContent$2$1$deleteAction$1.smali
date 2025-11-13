.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;
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
.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $index:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/ContentListState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;->$index:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;->$index:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/communal/ui/compose/ContentListState;->onRemove(I)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1$deleteAction$1;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/systemui/communal/ui/compose/ContentListState;->onSaveList(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Integer;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
