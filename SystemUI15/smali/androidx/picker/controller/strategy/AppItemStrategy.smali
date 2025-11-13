.class public final Landroidx/picker/controller/strategy/AppItemStrategy;
.super Landroidx/picker/controller/strategy/Strategy;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

.field private final parseAppDataTask:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final viewDataRepository:Landroidx/picker/repository/ViewDataRepository;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/picker/controller/strategy/Strategy;-><init>(Landroidx/picker/di/AppPickerContext;)V

    iget-object p1, p1, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/repository/ViewDataRepository;

    iput-object p1, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->viewDataRepository:Landroidx/picker/repository/ViewDataRepository;

    new-instance v0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    new-instance v1, Landroidx/picker/controller/strategy/AppItemStrategy$convertAppInfoDataTask$1;

    invoke-direct {v1, p1}, Landroidx/picker/controller/strategy/AppItemStrategy$convertAppInfoDataTask$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    sget-object v0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->Companion:Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;

    new-instance v1, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$1;

    invoke-direct {v1, p1}, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$1;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$2;

    invoke-direct {v2, p1}, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;->provide(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->parseAppDataTask:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getConvertAppInfoDataTask$p(Landroidx/picker/controller/strategy/AppItemStrategy;)Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;
    .locals 0

    iget-object p0, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    return-object p0
.end method


# virtual methods
.method public convert$picker_app_release(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/model/AppData;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;

    invoke-direct {v0, p0, p2}, Landroidx/picker/controller/strategy/AppItemStrategy$convert$convertAppInfoTask$1;-><init>(Landroidx/picker/controller/strategy/AppItemStrategy;Ljava/util/Comparator;)V

    iget-object p0, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->parseAppDataTask:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;

    invoke-virtual {p0, p1}, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->execute(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
