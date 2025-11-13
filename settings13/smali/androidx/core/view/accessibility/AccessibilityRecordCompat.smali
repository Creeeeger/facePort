.class public Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api15Impl;,
        Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api16Impl;
    }
.end annotation


# direct methods
.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "maxScrollX"
        }
    .end annotation

    .line 516
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api15Impl;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "maxScrollY"
        }
    .end annotation

    .line 566
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api15Impl;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "record",
            "root",
            "virtualDescendantId"
        }
    .end annotation

    .line 146
    invoke-static {p0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api16Impl;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    return-void
.end method
