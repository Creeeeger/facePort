.class final Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
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
.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SnapshotMutableIntStateImpl;Lcom/android/settings/network/SimOnboardingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput p1, p0, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
