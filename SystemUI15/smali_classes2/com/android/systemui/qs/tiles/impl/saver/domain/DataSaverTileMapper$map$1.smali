.class final Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1;
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
.field final synthetic $data:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1;->$data:Z

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1;->$data:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;

    const v1, 0x7f0300a0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const v0, 0x7f080df6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const v0, 0x7f080df5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1$1$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverTileMapper$map$1$1$1;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {p0, v0}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
