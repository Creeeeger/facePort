.class Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "ToggleAllowListingFeatureTarget.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 12

    move-object v10, p0

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v8, p7

    move-object v11, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v11, p7

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v8, v0

    :goto_0
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1040160

    goto :goto_1

    :cond_1
    const v0, 0x104015f

    :goto_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    move-object v1, p1

    iput-object v1, v10, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist isFeatureEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public blacklist onSelected()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104015f

    goto :goto_0

    :cond_0
    const v0, 0x1040160

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->setStateDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onSelected()V

    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getPrimaryDarkColorId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
