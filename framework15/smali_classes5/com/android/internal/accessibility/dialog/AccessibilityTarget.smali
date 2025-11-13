.class public abstract Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.super Ljava/lang/Object;
.source "AccessibilityTarget.java"

# interfaces
.implements Lcom/android/internal/accessibility/dialog/TargetOperations;
.implements Lcom/android/internal/accessibility/dialog/OnTargetSelectedListener;
.implements Lcom/android/internal/accessibility/dialog/OnTargetCheckedChangeListener;


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFragmentType:I

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mShortcutEnabled:Z

.field private blacklist mShortcutType:I

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    iput p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    iput-boolean p4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    iput-object p5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    iput p6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mUid:I

    invoke-static {p5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mComponentName:Landroid/content/ComponentName;

    iput-object p7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    return-void
.end method

.method private blacklist getLayerDrawable()Landroid/graphics/drawable/LayerDrawable;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    new-instance v3, Lcom/android/internal/accessibility/dialog/WrappedDrawable;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/accessibility/dialog/WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7, v1, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {v4, v6, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v5, 0x11

    invoke-virtual {v4, v6, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    return-object v4
.end method


# virtual methods
.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getFragmentType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getShortcutType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    return v0
.end method

.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mUid:I

    return v0
.end method

.method public blacklist isShortcutEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    return v0
.end method

.method public blacklist onCheckedChanged(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->setShortcutEnabled(Z)V

    invoke-static {}, Landroid/view/accessibility/Flags;->migrateEnableShortcuts()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist onSelected()V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected shortcut type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(Ljava/lang/String;)V

    return-void

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setShortcutEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    return-void
.end method

.method public blacklist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLayerDrawable()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isHighContrastTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x1040160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getPrimaryDarkColorId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x104015f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x104015e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getSummaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_1
    return-void
.end method
