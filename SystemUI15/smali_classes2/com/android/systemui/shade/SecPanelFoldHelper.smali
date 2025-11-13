.class public final Lcom/android/systemui/shade/SecPanelFoldHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecPanelFoldHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecPanelFoldHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelFoldHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    new-instance p1, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelFoldHelper$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V

    new-instance p1, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelFoldHelper$screenRatioListener$1;-><init>(Lcom/android/systemui/shade/SecPanelFoldHelper;)V

    return-void
.end method
