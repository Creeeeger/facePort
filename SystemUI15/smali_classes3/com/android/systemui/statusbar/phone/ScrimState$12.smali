.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$12;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "DREAMING"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState$12;-><init>(Ljava/lang/String;I)V

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
    .locals 4

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    if-eqz v1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V

    :cond_2
    return-void
.end method
