.class public final Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDeviceSupportLargeCoverScreen()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    return p0
.end method

.method public final isDeviceSupportTaskbar()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    return p0
.end method

.method public final isFoldableTypeFlip()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    return p0
.end method

.method public final isFoldableTypeFold()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    return p0
.end method

.method public final isNavigationBarMigrated()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SIMPLIFIED_GESTURE:Z

    return p0
.end method

.method public final isOpenThemeSupported()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    return p0
.end method

.method public final isSupportAssistantBySideButton()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    return p0
.end method

.method public final isSupportSearcle()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    return p0
.end method

.method public final isTablet()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    return p0
.end method
