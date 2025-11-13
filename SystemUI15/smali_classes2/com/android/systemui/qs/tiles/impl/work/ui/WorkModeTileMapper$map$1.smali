.class final Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$getTileLabel$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$getTileLabel$1;-><init>(Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;)V

    const-string v0, "SystemUi.QS_WORK_PROFILE_LABEL"

    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    const v0, 0x1080bad

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$HasActiveProfile;->isEnabled:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const-string p0, ""

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130f5c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {p0, v0}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Lcom/android/systemui/qs/tiles/impl/work/domain/model/WorkModeTileModel$NoActiveProfile;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/work/ui/WorkModeTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0300a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
