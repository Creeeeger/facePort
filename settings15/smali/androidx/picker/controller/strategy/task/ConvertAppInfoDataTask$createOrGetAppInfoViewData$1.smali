.class final Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/picker/model/viewdata/AppInfoViewData;",
        "appInfoData",
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
.field final synthetic $createAppInfoViewData:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;->this$0:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    iput-object p2, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;->$createAppInfoViewData:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/picker/model/AppInfoData;

    const-string v0, "appInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;->this$0:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    iget-object v0, v0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;->cachedAppInfoViewDataMap:Ljava/util/Map;

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_6

    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    invoke-interface {p1, v2}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-interface {p1, v2}, Landroidx/picker/model/AppInfoData;->setLabel(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    instance-of v2, v1, Landroidx/picker/loader/select/AppDataSelectableItem;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Landroidx/picker/loader/select/AppDataSelectableItem;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Landroidx/picker/loader/select/AppDataSelectableItem;->updateBase(Landroidx/picker/model/AppInfoData;)V

    :cond_5
    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

    invoke-virtual {v1, p1}, Landroidx/picker/features/observable/UpdateObservableProperty;->update(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    iget-object v1, v2, Landroidx/picker/loader/AppIconFlow;->base:Landroidx/picker/features/observable/UpdateMutableState;

    iput-object p1, v1, Landroidx/picker/features/observable/UpdateMutableState;->base:Ljava/lang/Object;

    new-instance v6, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v5, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iget v4, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V

    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;->$createAppInfoViewData:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    :goto_1
    iget-object p0, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask$createOrGetAppInfoViewData$1;->this$0:Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;

    iget-object p0, p0, Landroidx/picker/controller/strategy/task/ConvertAppInfoDataTask;->cachedAppInfoViewDataMap:Ljava/util/Map;

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
