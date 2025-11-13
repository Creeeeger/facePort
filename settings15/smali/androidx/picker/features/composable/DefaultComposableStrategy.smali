.class public Landroidx/picker/features/composable/DefaultComposableStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/features/composable/ComposableStrategy;


# instance fields
.field private final iconFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final leftFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final titleFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final widgetFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/picker/features/composable/left/LeftFrame;->values()[Landroidx/picker/features/composable/left/LeftFrame;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->leftFrameList:Ljava/util/List;

    invoke-static {}, Landroidx/picker/features/composable/icon/IconFrame;->values()[Landroidx/picker/features/composable/icon/IconFrame;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->iconFrameList:Ljava/util/List;

    invoke-static {}, Landroidx/picker/features/composable/title/TitleFrame;->values()[Landroidx/picker/features/composable/title/TitleFrame;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->titleFrameList:Ljava/util/List;

    invoke-static {}, Landroidx/picker/features/composable/widget/WidgetFrame;->values()[Landroidx/picker/features/composable/widget/WidgetFrame;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->widgetFrameList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIconFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->iconFrameList:Ljava/util/List;

    return-object p0
.end method

.method public getLeftFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->leftFrameList:Ljava/util/List;

    return-object p0
.end method

.method public getTitleFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->titleFrameList:Ljava/util/List;

    return-object p0
.end method

.method public getWidgetFrameList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->widgetFrameList:Ljava/util/List;

    return-object p0
.end method

.method public selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;
    .locals 1

    const-string/jumbo p0, "viewData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxExpander:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz p0, :cond_7

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->Switch:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->RadioAction:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_4
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->Radio:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBoxAction:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_6
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
