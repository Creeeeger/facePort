.class public final Lcom/android/systemui/volume/purefunction/VolumePanelLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

.field public static final VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

.field public static final VERTICAL_PADDING_TOP_RATIO:F

.field public static final VERTICAL_WIDE_SCREEN_TOP_RATIO:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    invoke-direct {v0}, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    const v0, 0x3eae147b    # 0.34f

    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    const v0, 0x3eb851ec    # 0.36f

    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    const v0, 0x3e851eb8    # 0.26f

    sput v0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
