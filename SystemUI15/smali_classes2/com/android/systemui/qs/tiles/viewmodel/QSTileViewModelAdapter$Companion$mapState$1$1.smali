.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $viewModelState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;->$viewModelState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;->$viewModelState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon;

    instance-of v1, v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;->$viewModelState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v0, v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v0, v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object p0, v1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    if-eqz p0, :cond_2

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget p0, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
