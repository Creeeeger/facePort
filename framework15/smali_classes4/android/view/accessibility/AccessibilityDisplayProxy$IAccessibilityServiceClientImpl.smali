.class Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;
.super Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.source "AccessibilityDisplayProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityDisplayProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAccessibilityServiceClientImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;


# direct methods
.method constructor blacklist <init>(Landroid/view/accessibility/AccessibilityDisplayProxy;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl;->this$0:Landroid/view/accessibility/AccessibilityDisplayProxy;

    new-instance v0, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;

    invoke-direct {v0, p1}, Landroid/view/accessibility/AccessibilityDisplayProxy$IAccessibilityServiceClientImpl$1;-><init>(Landroid/view/accessibility/AccessibilityDisplayProxy;)V

    invoke-direct {p0, p2, p3, v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-void
.end method
