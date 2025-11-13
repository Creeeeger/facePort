.class public final Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALLOW_BACK_GESTURE_IN_SHADE:Z

.field public static SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/Flags;->FEATURE_FLAGS:Lcom/android/systemui/shared/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_GESTURE:Z

    sput-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAssistantGestureDisabled(J)Z
    .locals 6

    const-wide/32 v0, 0x20000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    and-long/2addr p0, v0

    :cond_0
    const-wide/16 v0, 0xc0b

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x40

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBackGestureDisabled(JZ)Z
    .locals 8

    const-wide/16 v0, 0x8

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-wide/32 v4, 0x8000

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    const-wide/32 v4, 0x2000000

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v4, 0x20000

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v4, -0x3

    and-long/2addr p0, v4

    :cond_2
    if-nez p2, :cond_3

    const-wide v4, 0x2000400002L

    goto :goto_0

    :cond_3
    const-wide v4, 0x2000400000L

    :goto_0
    sget-boolean p2, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-nez p2, :cond_4

    const-wide/16 v6, 0x4

    or-long/2addr v4, v6

    :cond_4
    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
