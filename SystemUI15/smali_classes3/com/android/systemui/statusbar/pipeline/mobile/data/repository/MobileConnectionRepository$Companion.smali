.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;

.field public static final DEFAULT_NUM_LEVELS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository$Companion;->DEFAULT_NUM_LEVELS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
