.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$3;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "AUTH_SCRIMMED_SHADE"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>(Ljava/lang/String;I)V

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

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    const v0, 0x3f28f5c3    # 0.66f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    return-void
.end method
