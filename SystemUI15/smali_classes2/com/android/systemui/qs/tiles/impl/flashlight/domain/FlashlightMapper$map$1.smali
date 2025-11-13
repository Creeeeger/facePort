.class final Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel;Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->isEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080e02

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f080e01

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1$1;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightTemporarilyUnavailable;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130ef9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    const v2, 0x7f030091

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/model/FlashlightTileModel$FlashlightAvailable;->isEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/flashlight/domain/FlashlightMapper;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_1
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
