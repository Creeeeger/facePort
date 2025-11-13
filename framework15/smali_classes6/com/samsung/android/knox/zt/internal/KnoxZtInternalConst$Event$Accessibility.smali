.class public Lcom/samsung/android/knox/zt/internal/KnoxZtInternalConst$Event$Accessibility;
.super Ljava/lang/Object;
.source "KnoxZtInternalConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/internal/KnoxZtInternalConst$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Accessibility"
.end annotation


# static fields
.field public static final blacklist attachAccessibilityOverlayToDisplay:I = 0x0

.field public static final blacklist attachAccessibilityOverlayToWindow:I = 0x1

.field public static final blacklist clearCache:I = 0x2

.field public static final blacklist clearCachedSubtree:I = 0x3

.field public static final blacklist createDisplayContext:I = 0x4

.field public static final blacklist createWindowContext:I = 0x5

.field public static final blacklist disableSelf:I = 0x6

.field public static final blacklist dispatchGesture:I = 0x7

.field public static final blacklist findFocus:I = 0x8

.field public static final blacklist getAccessibilityButtonController:I = 0x9

.field public static final blacklist getFingerprintGestureController:I = 0xa

.field public static final blacklist getInputMethod:I = 0xb

.field public static final blacklist getMagnificationController:I = 0xc

.field public static final blacklist getRootInActiveWindow:I = 0xd

.field public static final blacklist getServiceInfo:I = 0xe

.field public static final blacklist getSoftKeyboardController:I = 0xf

.field public static final blacklist getSystemActions:I = 0x10

.field public static final blacklist getSystemService:I = 0x11

.field public static final blacklist getTouchInteractionController:I = 0x12

.field public static final blacklist getWindows:I = 0x13

.field public static final blacklist getWindowsOnAllDisplays:I = 0x14

.field public static final blacklist isCacheEnabled:I = 0x15

.field public static final blacklist isNodeInCache:I = 0x16

.field public static final blacklist onAccessibilityEvent:I = 0x17

.field public static final blacklist onBind:I = 0x18

.field public static final blacklist onGesture:I = 0x19

.field public static final blacklist onInterrupt:I = 0x1a

.field public static final blacklist onKeyEvent:I = 0x26

.field public static final blacklist onMotionEvent:I = 0x1b

.field public static final blacklist onServiceConnected:I = 0x27

.field public static final blacklist onSystemActionsChanged:I = 0x1c

.field public static final blacklist performGlobalAction:I = 0x1d

.field public static final blacklist setAccessibilityFocusAppearance:I = 0x1e

.field public static final blacklist setAnimationScale:I = 0x1f

.field public static final blacklist setCacheEnabled:I = 0x20

.field public static final blacklist setGestureDetectionPassthroughRegion:I = 0x21

.field public static final blacklist setServiceInfo:I = 0x22

.field public static final blacklist setTouchExplorationPassthroughRegion:I = 0x23

.field public static final blacklist takeScreenshot:I = 0x24

.field public static final blacklist takeScreenshotOfWindow:I = 0x25


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
