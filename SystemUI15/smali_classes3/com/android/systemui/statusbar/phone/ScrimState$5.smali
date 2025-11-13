.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$5;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "BOUNCER"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mSurfaceColor:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    return-void
.end method

.method public final setSurfaceColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mSurfaceColor:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    :cond_0
    return-void
.end method
