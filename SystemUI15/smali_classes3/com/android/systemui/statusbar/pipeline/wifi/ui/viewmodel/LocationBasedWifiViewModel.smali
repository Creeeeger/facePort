.class public abstract Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion;


# instance fields
.field public final commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

.field public final defaultColor:I

.field public final location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;ILcom/android/systemui/statusbar/phone/StatusBarLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->defaultColor:I

    return-void
.end method

.method public static getShadowDrawable(Landroid/view/View;I)Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p0

    mul-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/DoubleShadowStatusBarIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)V

    return-object v2
.end method


# virtual methods
.method public final getActivityIcon()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;->getActivityIcon()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getDeXWifiIcon()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;->getDeXWifiIcon()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getUpdateDeXWifiIconModel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;->getUpdateDeXWifiIconModel()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiIcon()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModelCommon;->getWifiIcon()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method
