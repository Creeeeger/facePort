.class final Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/controller/strategy/AppItemStrategy;->convert$picker_app_release(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/picker/model/viewdata/AppInfoViewData;",
        "input",
        "Landroidx/picker/model/AppInfoData;",
        "invoke"
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

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->this$0:Landroidx/picker/controller/strategy/AppItemStrategy;

    invoke-static {v0}, Landroidx/picker/controller/strategy/AppItemStrategy;->access$getConvertAppInfoDataTask$p(Landroidx/picker/controller/strategy/AppItemStrategy;)Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;->$comparator:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method
