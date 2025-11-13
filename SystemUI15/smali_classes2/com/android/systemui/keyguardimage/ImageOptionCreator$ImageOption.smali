.class public final Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public clockColor:I

.field public clockType:Ljava/lang/String;

.field public final color:[I

.field public coverClockColor:I

.field public coverClockColorIndex:I

.field public coverClockColorType:I

.field public displayType:I

.field public height:I

.field public isRtl:Z

.field public legibilityColor:I

.field public realHeight:I

.field public realWidth:I

.field public rotation:I

.field public scale:F

.field public type:I

.field public useClockColor:Z

.field public useDefaultColor:Z

.field public useScreenshot:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useScreenshot:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    iput v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    iput-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->legibilityColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->coverClockColorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "type=%d, width=%d, height=%d, scale=%f, displayType=%d, useDefaultColor=%s, useClockColor=%s, legibilityColor=%d, clockType=%s, coverClockColorIndex=%d, coverClockColor=%d,  coverClockColorType=%d, clockColor=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, ", main=0x%x, 2nd=0x%x, bg_main=0x%x, bg_2nd=0x%x"

    invoke-static {v1, p0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
