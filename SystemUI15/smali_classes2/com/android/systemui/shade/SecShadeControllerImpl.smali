.class public final Lcom/android/systemui/shade/SecShadeControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final panelTouchProximityInteractor$delegate:Lkotlin/Lazy;

.field public final secQuickSettingsAffordanceInteractor$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecShadeControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecShadeControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/shade/SecShadeControllerImpl$panelTouchProximityInteractor$2;->INSTANCE:Lcom/android/systemui/shade/SecShadeControllerImpl$panelTouchProximityInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecShadeControllerImpl;->panelTouchProximityInteractor$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecShadeControllerImpl$secQuickSettingsAffordanceInteractor$2;->INSTANCE:Lcom/android/systemui/shade/SecShadeControllerImpl$secQuickSettingsAffordanceInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecShadeControllerImpl;->secQuickSettingsAffordanceInteractor$delegate:Lkotlin/Lazy;

    return-void
.end method
