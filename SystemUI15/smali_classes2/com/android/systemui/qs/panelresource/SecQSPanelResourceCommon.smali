.class public final Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;


# instance fields
.field public final isEmergencyMode:Z

.field public final knoxStateMonitor$delegate:Lkotlin/Lazy;

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public final shadeHeaderController$delegate:Lkotlin/Lazy;

.field public tileExpandedWidthRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$settingsHelper$2;->INSTANCE:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$settingsHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->settingsHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$shadeHeaderController$2;->INSTANCE:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$shadeHeaderController$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->shadeHeaderController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$knoxStateMonitor$2;->INSTANCE:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$knoxStateMonitor$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->knoxStateMonitor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->isEmergencyMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->tileExpandedWidthRatio:F

    return-void
.end method
