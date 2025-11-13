.class public final Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBehavior:I

.field public final mInteraction:I

.field public final mIsDexMode:Z

.field public final mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mBehavior:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mInteraction:I

    iput-boolean p4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mIsDexMode:Z

    iput p5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mWindowingMode:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mBehavior:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mBehavior:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mInteraction:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mInteraction:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mIsDexMode:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mIsDexMode:Z

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mWindowingMode:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mWindowingMode:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mBehavior:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mInteraction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mIsDexMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;->mWindowingMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
