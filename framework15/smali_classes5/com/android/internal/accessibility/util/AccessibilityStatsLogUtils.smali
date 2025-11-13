.class public final Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# static fields
.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

.field private static final blacklist UNKNOWN_STATUS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToLoggingMagnificationMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist convertToLoggingMagnificationScale(F)I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static blacklist convertToLoggingServiceStatus(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static blacklist convertToLoggingShortcutType(Landroid/content/Context;I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/16 v0, 0x9

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isAccessibilityGestureEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V
    .locals 4

    nop

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10a

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    nop

    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 2

    nop

    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static blacklist logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10a

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static blacklist logMagnificationFollowTypingFocusSession(J)V
    .locals 1

    const/16 v0, 0x1c5

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    return-void
.end method

.method public static blacklist logMagnificationModeWithImeOn(I)V
    .locals 2

    nop

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    const/16 v1, 0x15a

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public static blacklist logMagnificationTripleTap(Z)V
    .locals 4

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    const/16 v2, 0x10a

    const/4 v3, 0x3

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static blacklist logMagnificationTripleTapAndHoldSession(J)V
    .locals 1

    const/16 v0, 0x1c4

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    return-void
.end method

.method public static blacklist logMagnificationTwoFingerTripleTap(Z)V
    .locals 4

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    const/16 v2, 0x10a

    const/16 v3, 0x8

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static blacklist logMagnificationUsageState(IJF)V
    .locals 3

    nop

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationScale(F)I

    move-result v1

    const/16 v2, 0x159

    invoke-static {v2, v0, p1, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    return-void
.end method

.method public static blacklist logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V
    .locals 1

    const/16 v0, 0x180

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IJ)V

    return-void
.end method
