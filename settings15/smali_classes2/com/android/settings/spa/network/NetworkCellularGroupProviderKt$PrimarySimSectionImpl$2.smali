.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $callsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $subscriptionInfoListFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation
.end field

.field final synthetic $textsSelectedId:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$subscriptionInfoListFlow:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$subscriptionInfoListFlow:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->PrimarySimSectionImpl(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
