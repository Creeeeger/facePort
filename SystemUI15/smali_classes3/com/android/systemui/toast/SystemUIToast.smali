.class public final Lcom/android/systemui/toast/SystemUIToast;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ToastPlugin$Toast;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultGravity:I

.field public mDefaultY:I

.field public final mInAnimator:Landroid/animation/Animator;

.field public final mOutAnimator:Landroid/animation/Animator;

.field public final mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

.field public final mText:Ljava/lang/CharSequence;

.field public final mToastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    const-string v9, "SystemUIToast"

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-interface/range {p4 .. p4}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface/range {p4 .. p4}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_5

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f0d03d1

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v10, 0x102000b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v12, 0x1020006

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v13, 0x7f071739

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->fontScale:F

    const v14, 0x3fa66666    # 1.3f

    cmpl-float v15, v13, v14

    if-lez v15, :cond_1

    int-to-float v1, v1

    div-float/2addr v1, v13

    mul-float/2addr v1, v14

    invoke-virtual {v10, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Package name not found package="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " user="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v11

    :goto_0
    iget-object v7, v0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-wide/16 v14, 0x80

    invoke-static {v14, v15}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v14

    invoke-virtual {v13, v2, v14, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_4

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v14, v5

    if-eqz v14, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    xor-int/2addr v14, v5

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v7}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v7

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v7, v11

    goto :goto_3

    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Couldn\'t find application info for packageName="

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " userId="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    if-nez v7, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7fffffff

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    if-nez v1, :cond_6

    const-string v1, "No appInfo for pkg="

    const-string v7, " usr="

    invoke-static {v3, v1, v2, v7, v9}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_7

    :try_start_2
    iget-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v7, v0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const-string v1, "Cannot find application resources for icon label."

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    move-object v1, v8

    :goto_5
    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v2

    const-string v9, "alpha"

    const-string/jumbo v10, "scaleY"

    const-string/jumbo v12, "scaleX"

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v15, 0x7f0a0d10

    const v11, 0x7f0a0505

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v2

    move-object v11, v9

    goto/16 :goto_7

    :cond_8
    sget-object v2, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v2, :cond_9

    if-nez v11, :cond_a

    :cond_9
    move-object v11, v9

    goto/16 :goto_6

    :cond_a
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v14, v14, v14, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-array v13, v6, [F

    fill-array-data v13, :array_0

    invoke-static {v1, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v13, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    invoke-static {v1, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x42

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v14}, Landroid/view/View;->setAlpha(F)V

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {v11, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object v11, v9

    const-wide/16 v8, 0x11b

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x32

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v14}, Landroid/view/View;->setAlpha(F)V

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    invoke-static {v2, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0x11b

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x5

    new-array v9, v5, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const/4 v13, 0x1

    aput-object v7, v9, v13

    aput-object v3, v9, v6

    const/4 v3, 0x3

    aput-object v4, v9, v3

    const/4 v3, 0x4

    aput-object v2, v9, v3

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v2, v8

    goto :goto_7

    :goto_6
    const/4 v2, 0x0

    :goto_7
    iput-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_a

    :cond_b
    sget-object v2, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a0505

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0d10

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_d

    if-nez v3, :cond_c

    goto/16 :goto_8

    :cond_c
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v7, v8, v13, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-array v8, v6, [F

    fill-array-data v8, :array_5

    invoke-static {v1, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0xfa

    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v6, [F

    fill-array-data v9, :array_6

    invoke-static {v1, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v7

    new-array v10, v6, [F

    const/4 v12, 0x0

    aput v7, v10, v12

    const/4 v7, 0x0

    const/4 v12, 0x1

    aput v7, v10, v12

    const-string v7, "elevation"

    invoke-static {v1, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x28

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0x96

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v10, v6, [F

    fill-array-data v10, :array_7

    invoke-static {v1, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0x64

    invoke-virtual {v1, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v10, v6, [F

    fill-array-data v10, :array_8

    invoke-static {v3, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0xa6

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v6, [F

    fill-array-data v10, :array_9

    invoke-static {v2, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v8, v4, v10

    const/4 v8, 0x1

    aput-object v9, v4, v8

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v1, v4, v6

    const/4 v1, 0x4

    aput-object v3, v4, v1

    const/4 v1, 0x5

    aput-object v2, v4, v1

    invoke-virtual {v11, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v11, 0x0

    :goto_9
    move-object v1, v11

    :goto_a
    iput-object v1, v0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/systemui/toast/SystemUIToast;->onOrientationChange(I)V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getGravity()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getHorizontalMargin()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getInAnimation()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getOutAnimation()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getVerticalMargin()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    return-object p0
.end method

.method public final getXOffset()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getYOffset()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final isPluginToast()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onOrientationChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onOrientationChange(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10505ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e015f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    return-void
.end method
