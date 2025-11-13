.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$4;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "AUTH_SCRIMMED"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>(Ljava/lang/String;I)V

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

    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    iget v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    const p1, 0x3f28f5c3    # 0.66f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    return-void
.end method
