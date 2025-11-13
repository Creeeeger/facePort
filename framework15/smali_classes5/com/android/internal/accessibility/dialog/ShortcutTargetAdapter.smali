.class Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
.super Lcom/android/internal/accessibility/dialog/TargetAdapter;
.source "ShortcutTargetAdapter.java"


# instance fields
.field private blacklist mShortcutMenuMode:I

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/TargetAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method blacklist getShortcutMenuMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109001e

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;-><init>()V

    const v6, 0x10201ad

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const v6, 0x10201ae

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    const v6, 0x10201af

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;

    move-object/from16 v3, p2

    :goto_0
    iget-object v6, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mTargets:Ljava/util/List;

    move/from16 v7, p1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    nop

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v14, v9}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, ";;;"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v14, v15, v2

    const/4 v11, 0x1

    aget-object v12, v15, v11

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string/jumbo v13, "system"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v2

    goto :goto_3

    :sswitch_1
    const-string/jumbo v13, "secure"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v11

    goto :goto_3

    :sswitch_2
    const-string/jumbo v13, "global"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    goto :goto_3

    :goto_2
    const/4 v13, -0x1

    :goto_3
    const/4 v11, -0x2

    packed-switch v13, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v14, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    const/4 v2, 0x1

    :cond_5
    goto :goto_4

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v14, v2, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_6

    const/4 v2, 0x1

    :cond_6
    goto :goto_4

    :pswitch_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v14, v2, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    move v2, v13

    :cond_7
    nop

    :goto_4
    if-eqz v2, :cond_8

    const/4 v11, 0x3

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    goto :goto_5

    :cond_8
    const/4 v11, 0x4

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    :goto_5
    const-string/jumbo v11, "sip_speak_keyboard_input_aloud"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x5

    iput v11, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    :cond_9
    goto :goto_6

    :cond_a
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->disallowPerformInCoverScreen(Ljava/lang/String;)Z

    move-result v2

    const v11, 0x104015e

    const-string v12, " "

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    :cond_b
    const-string v2, ""

    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v13

    if-nez v13, :cond_e

    iget v13, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    const v11, 0x1040160

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    iget v13, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_d

    const v11, 0x104015f

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    iget v13, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_f

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Ljava/lang/String;

    :cond_f
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    :cond_10
    :goto_8
    iget v2, v0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    invoke-virtual {v6, v4, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_2
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist setShortcutMenuMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->mShortcutMenuMode:I

    return-void
.end method
