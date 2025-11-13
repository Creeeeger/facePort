.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;
.super Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchableFrameworkFeatureInfo"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
