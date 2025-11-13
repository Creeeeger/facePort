.class public final Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultIndicatorBackgroundCornerRadius:F

.field public static final DefaultIndicatorBackgroundPadding:F

.field public static final DefaultIndicatorCornerRadius:F

.field public static final DefaultLabelIndicatorBackgroundSpacing:F

.field public static final DefaultSpacing:F

.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->INSTANCE:Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;

    const/16 v0, 0x8

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorBackgroundPadding:F

    const/16 v0, 0x18

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultLabelIndicatorBackgroundSpacing:F

    const/16 v0, 0x14

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorCornerRadius:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/VolumePanelRadioButtonBarDefaults;->DefaultIndicatorBackgroundCornerRadius:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
