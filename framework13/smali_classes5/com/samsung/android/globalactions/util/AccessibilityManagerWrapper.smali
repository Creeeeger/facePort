.class public Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerWrapper.java"


# instance fields
.field blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist isVoiceAssistantMode()Z
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x10

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method
