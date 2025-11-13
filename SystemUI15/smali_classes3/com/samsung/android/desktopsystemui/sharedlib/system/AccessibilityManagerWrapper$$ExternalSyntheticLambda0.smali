.class public final synthetic Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;

    return-void
.end method


# virtual methods
.method public final onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method
