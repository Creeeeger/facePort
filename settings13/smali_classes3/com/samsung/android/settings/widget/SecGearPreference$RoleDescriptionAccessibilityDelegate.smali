.class Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SecGearPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecGearPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoleDescriptionAccessibilityDelegate"
.end annotation


# instance fields
.field private final mRoleDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;->mRoleDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;->mRoleDescription:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
