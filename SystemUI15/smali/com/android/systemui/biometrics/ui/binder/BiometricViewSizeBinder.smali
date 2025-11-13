.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$bind$notifyAccessibilityChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, p1, p1, v0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void
.end method
