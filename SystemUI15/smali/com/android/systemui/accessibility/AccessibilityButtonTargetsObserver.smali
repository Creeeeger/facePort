.class public final Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;
.super Lcom/android/systemui/accessibility/SecureSettingsContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    const-string v0, "accessibility_button_targets"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;->onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V

    return-void
.end method
