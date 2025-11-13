.class public final Lcom/android/systemui/power/ChargerAnimationConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BATTERY_LEVEL_PERCENT_SIZE:I

.field public static final BATTERY_LEVEL_PERCENT_SIZE_TABLET:I

.field public static final BATTERY_LEVEL_SIZE:I

.field public static final BATTERY_LEVEL_SIZE_MYANMAR:I

.field public static final BATTERY_LEVEL_SIZE_TABLET:I

.field public static final BATTERY_LEVEL_SIZE_TABLET_MYANMAR:I

.field public static final INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

.field public static final WAVE_KEY_PATH:Lcom/airbnb/lottie/model/KeyPath;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-direct {v0}, Lcom/android/systemui/power/ChargerAnimationConstants;-><init>()V

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "Rectangle 1"

    const-string v2, "Fill 1"

    const-string v3, "**"

    const-string/jumbo v4, "wave"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/power/ChargerAnimationConstants;->WAVE_KEY_PATH:Lcom/airbnb/lottie/model/KeyPath;

    const v0, 0x7f0701c1

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE:I

    const v0, 0x7f0701c0

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_MYANMAR:I

    const v0, 0x7f0701c3

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_TABLET:I

    const v0, 0x7f0701c2

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_TABLET_MYANMAR:I

    const v0, 0x7f0701c5

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_PERCENT_SIZE:I

    const v0, 0x7f0701c6

    sput v0, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_PERCENT_SIZE_TABLET:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
