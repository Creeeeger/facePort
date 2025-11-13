.class final Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableSubscriptionInfoList$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $showMobileDataSection:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subscriptionViewModel:Lcom/android/settings/network/SubscriptionInfoListViewModel;

.field final synthetic $textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SubscriptionInfoListViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$showMobileDataSection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$subscriptionViewModel:Lcom/android/settings/network/SubscriptionInfoListViewModel;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iput-object p8, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$selectableSubscriptionInfoList$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$selectableSubscriptionInfoList$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/16 v0, 0x8

    invoke-static {p2, p1, v0}, Lcom/android/settings/spa/network/SimsSectionKt;->SimsSection(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, -0x59d621b

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$showMobileDataSection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/runtime/MutableIntState;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    invoke-static {p2, v2, p1, v1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->MobileDataSectionImpl(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/Composer;I)V

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$subscriptionViewModel:Lcom/android/settings/network/SubscriptionInfoListViewModel;

    iget-object v1, p2, Lcom/android/settings/network/SubscriptionInfoListViewModel;->selectableSubscriptionInfoListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/MutableIntState;

    iget-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/MutableIntState;

    const/16 v6, 0x8

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->PrimarySimSectionImpl(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/Composer;I)V

    iget-object p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->OtherSection(Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
