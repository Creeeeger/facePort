.class final Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;
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
.field final synthetic $comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/picker/controller/strategy/AppItemStrategy;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/AppItemStrategy;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/controller/strategy/AppItemStrategy;",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->this$0:Landroidx/picker/controller/strategy/AppItemStrategy;

    iput-object p2, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->$comparator:Ljava/util/Comparator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->this$0:Landroidx/picker/controller/strategy/AppItemStrategy;

    invoke-static {v0}, Landroidx/picker/controller/strategy/AppItemStrategy;->access$getConvertAppInfoDataTask$p(Landroidx/picker/controller/strategy/AppItemStrategy;)Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;

    iget-object p0, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->$comparator:Ljava/util/Comparator;

    invoke-direct {v0, p0}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
