.class public final synthetic Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda4;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda4;->f$0:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->lambda$takeScreenshotOfWindow$3(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    return-void
.end method
