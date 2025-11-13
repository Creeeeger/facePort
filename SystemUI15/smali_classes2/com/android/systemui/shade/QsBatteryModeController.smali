.class public final Lcom/android/systemui/shade/QsBatteryModeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public fadeInStartFraction:F

.field public fadeOutCompleteFraction:F

.field public final insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/QsBatteryModeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/QsBatteryModeController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/QsBatteryModeController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shade/QsBatteryModeController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QsBatteryModeController;->updateResources()V

    return-void
.end method


# virtual methods
.method public final updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/QsBatteryModeController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/shade/QsBatteryModeController;->fadeInStartFraction:F

    iget-object v0, p0, Lcom/android/systemui/shade/QsBatteryModeController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/shade/QsBatteryModeController;->fadeOutCompleteFraction:F

    return-void
.end method
