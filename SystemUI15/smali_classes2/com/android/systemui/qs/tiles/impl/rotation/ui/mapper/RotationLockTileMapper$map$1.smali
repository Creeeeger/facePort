.class final Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130f32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f13011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;->isRotationLocked:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    const v0, 0x7f080ddb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;->isCameraRotationEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130f8e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    const v0, 0x7f080ddc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x1070103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v3, 0x7f03009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->devicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f130f30

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f130f31

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/ui/mapper/RotationLockTileMapper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f130f90

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_5
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

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
