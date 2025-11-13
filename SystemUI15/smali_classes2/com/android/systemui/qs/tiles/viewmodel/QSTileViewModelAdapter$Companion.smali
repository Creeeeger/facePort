.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;-><init>()V

    return-void
.end method

.method public static mapState(Landroid/content/Context;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;)Lcom/android/systemui/plugins/qs/QSTile$AdapterState;
    .locals 5

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;-><init>()V

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    sget-object p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-ne v3, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    sget-object v4, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    new-instance p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion$mapState$1$1;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;)V

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->getLegacyState()I

    move-result p2

    iput p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    sget-object p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;->DISABLED:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    if-ne v3, p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    instance-of p2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Custom;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Custom;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Custom;->icon:Lcom/android/systemui/common/shared/model/Icon;

    instance-of p2, p1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object p0, p1, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    instance-of p2, p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget p1, p1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_2
    iput-object p0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    instance-of p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    if-eqz p0, :cond_5

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    goto :goto_3

    :cond_5
    instance-of p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    if-eqz p0, :cond_6

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    :cond_6
    :goto_3
    return-object v0
.end method
