.class final Landroidx/picker/controller/strategy/task/LimitedSelectableTask$execute$disposableHandleList$1$disposableBefore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newSelected",
        "invoke",
        "(Z)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget p0, p0, Landroidx/picker/controller/strategy/task/LimitedSelectableTask;->limited:I

    if-lt p1, p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "selectedSet"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method
