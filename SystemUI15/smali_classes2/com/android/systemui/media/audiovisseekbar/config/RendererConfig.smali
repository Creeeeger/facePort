.class public final Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    invoke-direct {v0}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;-><init>()V

    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemainTrackBorderBound()F
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
