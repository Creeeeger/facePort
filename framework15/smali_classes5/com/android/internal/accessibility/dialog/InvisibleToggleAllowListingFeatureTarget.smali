.class Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "InvisibleToggleAllowListingFeatureTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 13

    nop

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p7

    move-object v11, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v2, p7

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    :goto_0
    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
