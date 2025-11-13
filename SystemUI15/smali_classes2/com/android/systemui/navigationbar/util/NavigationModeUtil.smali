.class public final Lcom/android/systemui/navigationbar/util/NavigationModeUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

.field public static bottomInsetScaleArray:[F

.field public static sideInsetScaleArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    const/4 v0, 0x0

    new-array v1, v0, [F

    sput-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getGestureOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_detail_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "navigation_bar_gesture_hint"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_1

    :cond_1
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const-string p0, "com.android.internal.systemui.navbar.gestural"

    goto :goto_1

    :cond_3
    const-string p0, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    :goto_1
    return-object p0
.end method

.method public static final getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "com.android.internal.systemui.navbar.threebutton"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getGestureOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final isBottomGesture(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
