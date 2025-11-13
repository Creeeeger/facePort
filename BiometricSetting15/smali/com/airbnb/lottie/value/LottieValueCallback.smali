.class public Lcom/airbnb/lottie/value/LottieValueCallback;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/SimpleColorFilter;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 2
    .line 3
    iput p1, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    .line 4
    .line 5
    iput p2, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    .line 6
    .line 7
    iput-object p3, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 10
    .line 11
    iput p5, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    .line 12
    .line 13
    iput p6, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    .line 14
    .line 15
    iput p7, v0, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
