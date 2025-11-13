.class public final Landroidx/picker/controller/strategy/AppItemStrategy;
.super Landroidx/picker/controller/strategy/Strategy;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J=\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\u001a\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015j\n\u0012\u0004\u0012\u00020\u0011\u0018\u0001`\u0016H\u0010\u00a2\u0006\u0002\u0008\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0007\u001a*\u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\t0\u0008\u0012\u0004\u0012\u00020\u000c0\u0008j\u0002`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/picker/controller/strategy/AppItemStrategy;",
        "Landroidx/picker/controller/strategy/Strategy;",
        "appPickerContext",
        "Landroidx/picker/di/AppPickerContext;",
        "(Landroidx/picker/di/AppPickerContext;)V",
        "convertAppInfoDataTask",
        "Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;",
        "parseAppDataTask",
        "Lkotlin/Function1;",
        "",
        "Landroidx/picker/model/AppInfoData;",
        "Landroidx/picker/model/viewdata/AppInfoViewData;",
        "Landroidx/picker/controller/strategy/task/ParseAppDataTask;",
        "Landroidx/picker/controller/strategy/task/ParseAppDataTaskProvider;",
        "viewDataRepository",
        "Landroidx/picker/repository/ViewDataRepository;",
        "convert",
        "Landroidx/picker/model/viewdata/ViewData;",
        "dataList",
        "Landroidx/picker/model/AppData;",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "convert$picker_app_release",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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
    .locals 9

    const-string v0, "appPickerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/controller/strategy/Strategy;-><init>(Landroidx/picker/di/AppPickerContext;)V

    iget-object p1, p1, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/repository/ViewDataRepository;

    iput-object p1, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->viewDataRepository:Landroidx/picker/repository/ViewDataRepository;

    new-instance v7, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    new-instance v8, Landroidx/picker/controller/strategy/AppItemStrategy$convertAppInfoDataTask$1;

    const-class v3, Landroidx/picker/repository/ViewDataRepository;

    const-string v4, "createAppInfoViewData"

    const/4 v1, 0x1

    const-string v5, "createAppInfoViewData(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/viewdata/AppInfoViewData;"

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v7, v8}, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v7, p0, Landroidx/picker/controller/strategy/AppItemStrategy;->convertAppInfoDataTask:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    new-instance v7, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$1;

    const-class v3, Landroidx/picker/repository/ViewDataRepository;

    const-string v4, "createGroupTitleViewData"

    const/4 v1, 0x1

    const-string v5, "createGroupTitleViewData(Landroidx/picker/model/appdata/GroupAppData;)Landroidx/picker/model/viewdata/GroupTitleViewData;"

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Landroidx/picker/controller/strategy/AppItemStrategy$parseAppDataTask$2;

    const-class v3, Landroidx/picker/repository/ViewDataRepository;

    const-string v4, "createCategoryViewData"

    const/4 v1, 0x2

    const-string v5, "createCategoryViewData(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/model/viewdata/CategoryViewData;"

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7, v8}, Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;->provide(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;

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

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
