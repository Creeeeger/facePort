.class public final Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

.field public static final progressTrackColor:I

.field public static final remainTrackBorderColor:I

.field public static final remainTrackColor:I

.field public static final uxPrimaryColor:I

.field public static final uxSecondaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    invoke-direct {v0}, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;-><init>()V

    sput-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;

    const v0, -0x1600ce

    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxPrimaryColor:I

    const v0, -0x7fff0035

    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->uxSecondaryColor:I

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->progressTrackColor:I

    const v0, 0x33ffffff

    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackColor:I

    const/high16 v0, 0x4c000000    # 3.3554432E7f

    sput v0, Lcom/android/systemui/media/audiovisseekbar/utils/color/ColorPresetProvider;->remainTrackBorderColor:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
