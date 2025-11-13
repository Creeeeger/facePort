.class public abstract Landroidx/picker/controller/strategy/Strategy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007J=\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\u000ej\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000fH \u00a2\u0006\u0002\u0008\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/picker/controller/strategy/Strategy;",
        "",
        "appPickerContext",
        "Landroidx/picker/di/AppPickerContext;",
        "(Landroidx/picker/di/AppPickerContext;)V",
        "clear",
        "",
        "clear$picker_app_release",
        "convert",
        "",
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
.field private final appPickerContext:Landroidx/picker/di/AppPickerContext;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 1

    const-string v0, "appPickerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/strategy/Strategy;->appPickerContext:Landroidx/picker/di/AppPickerContext;

    return-void
.end method


# virtual methods
.method public final clear$picker_app_release()V
    .locals 2

    iget-object p0, p0, Landroidx/picker/controller/strategy/Strategy;->appPickerContext:Landroidx/picker/di/AppPickerContext;

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/repository/ViewDataRepository;

    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/loader/select/CategorySelectableItem;

    invoke-virtual {v1}, Landroidx/picker/loader/select/CategorySelectableItem;->dispose()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public abstract convert$picker_app_release(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
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
.end method
