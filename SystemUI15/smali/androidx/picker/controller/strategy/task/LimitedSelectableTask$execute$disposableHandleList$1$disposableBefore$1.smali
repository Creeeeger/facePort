.class final Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;
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
.field final synthetic this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/task/LimitedSelectableTask;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;->this$0:Landroidx/picker/controller/strategy/task/LimitedSelectableTask;

    iget-object p1, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->selectedSet:Ljava/util/HashSet;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget p0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->limited:I

    if-lt p1, p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method
