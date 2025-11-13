.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

.field public contentDescription:Ljava/lang/CharSequence;

.field public final enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

.field public expandedAccessibilityClass:Lkotlin/reflect/KClass;

.field public icon:Lkotlin/jvm/functions/Function0;

.field public iconRes:Ljava/lang/Integer;

.field public label:Ljava/lang/CharSequence;

.field public secondaryLabel:Ljava/lang/CharSequence;

.field public sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

.field public stateDescription:Ljava/lang/CharSequence;

.field public supportedActions:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    sget-object p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    sget-object p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;->ENABLED:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    const-class p1, Landroid/widget/Switch;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->expandedAccessibilityClass:Lkotlin/reflect/KClass;

    return-void
.end method
