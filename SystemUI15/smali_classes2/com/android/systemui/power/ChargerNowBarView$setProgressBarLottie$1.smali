.class public final Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;

    invoke-direct {v0}, Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;-><init>()V

    sput-object v0, Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;->INSTANCE:Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    const/high16 p0, 0x41800000    # 16.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
