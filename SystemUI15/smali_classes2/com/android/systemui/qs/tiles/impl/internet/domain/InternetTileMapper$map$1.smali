.class final Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    const-class v0, Landroid/widget/Switch;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->expandedAccessibilityClass:Lkotlin/reflect/KClass;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getSecondaryLabel()Lcom/android/systemui/common/shared/model/Text;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/common/shared/model/Text;->Companion:Lcom/android/systemui/common/shared/model/Text$Companion;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getSecondaryLabel()Lcom/android/systemui/common/shared/model/Text;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getSecondaryTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    sget-object v0, Lcom/android/systemui/common/shared/model/ContentDescription;->Companion:Lcom/android/systemui/common/shared/model/ContentDescription$Companion;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getStateDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getIconId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getIcon()Lcom/android/systemui/common/shared/model/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getIconId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    invoke-interface {v2}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;->getIconId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper;->theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1$2;-><init>(Lcom/android/systemui/common/shared/model/Icon$Loaded;)V

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/InternetTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel;

    instance-of p0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Active;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    :goto_2
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

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
