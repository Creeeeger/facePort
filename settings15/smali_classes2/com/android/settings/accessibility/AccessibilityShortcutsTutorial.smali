.class public abstract Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ON_CLICK_LISTENER:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->ON_CLICK_LISTENER:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda6;

    return-void
.end method

.method public static createAccessibilityTutorialDialog(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1401f7

    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f1401fb

    invoke-virtual {v1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p0, p3, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createShortcutTutorialPages(Landroid/content/Context;ILjava/lang/CharSequence;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "Unexpected tutorial pages size"

    invoke-static {v0, p3}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    new-instance p3, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;)V

    invoke-static {p1, p0, p3}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createShortcutNavigationContentView(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p2
.end method

.method public static createAccessibilityTutorialDialogForSetupWizard(ILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1401f7

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p0, p3, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createShortcutTutorialPages(Landroid/content/Context;ILjava/lang/CharSequence;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v0

    const-string v0, "Unexpected tutorial pages size"

    invoke-static {v0, p3}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    const/4 p3, 0x0

    invoke-static {p1, p0, p3}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createShortcutNavigationContentView(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    return-object p2
.end method

.method public static createIllustrationViewWithImageRawResource(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda3;-><init>(I)V

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-static {p0, v1}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-object v0
.end method

.method public static createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f08032b

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-object v0
.end method

.method public static createShortcutNavigationContentView(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;)Landroid/view/View;
    .locals 11

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v5, v5, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v1, v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v1, v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v8, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0809

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v1, v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mInstruction:Ljava/lang/CharSequence;

    invoke-virtual {v9, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a1105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;

    invoke-direct {v1, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140213

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;

    move-object v5, v1

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;)V

    iput-object p2, v1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mOnPageSelectedCallback:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;

    return-object v0
.end method

.method public static createShortcutTutorialPages(Landroid/content/Context;ILjava/lang/CharSequence;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/CharSequence;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x10

    const/4 v3, 0x1

    const/16 v4, 0x10

    const v5, 0x7f0a07c4

    const/4 v6, 0x0

    const v7, 0x7f0d0029

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v2, v4, :cond_2

    const v2, 0x7f14020c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f080197

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const v2, 0x7f0a07cd

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "count"

    invoke-virtual {v4, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "featureName"

    move-object/from16 v10, p2

    invoke-virtual {v4, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f140204

    invoke-static {v0, v4, v2}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const v4, 0x7f140207

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v10, "\n\n"

    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {v15, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    const/16 v11, 0x10

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;-><init>(ILjava/lang/CharSequence;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v3, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f140209

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v3, 0x7f14020a

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f13000e

    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createIllustrationViewWithImageRawResource(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    goto :goto_3

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f080193

    goto :goto_2

    :cond_6
    const v2, 0x7f080190

    goto :goto_2

    :cond_7
    const v2, 0x7f080196

    :goto_2
    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    move-object v13, v3

    :goto_3
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f1401fd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    goto :goto_4

    :cond_9
    move v2, v8

    :goto_4
    const v3, 0x7f1401f9

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_a
    const v2, 0x7f1401fc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    const-string v10, "%s"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v10, v2, 0x2

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v14, 0x7f08032a

    invoke-virtual {v0, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v14, Landroid/text/style/ImageSpan;

    invoke-direct {v14, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    invoke-virtual {v14, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v11, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v4, 0x21

    invoke-virtual {v3, v14, v2, v10, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v15, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    const/4 v11, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;-><init>(ILjava/lang/CharSequence;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit8 v2, p1, 0x2

    if-ne v2, v8, :cond_c

    const v2, 0x7f140210

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v2, 0x7f0a07c4

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0801a0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v14

    const v2, 0x7f140206

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    const/4 v11, 0x2

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;-><init>(ILjava/lang/CharSequence;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v2, 0x4

    and-int/lit8 v3, p1, 0x4

    if-ne v3, v2, :cond_d

    const v2, 0x7f14020e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v2, 0x7f130011

    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createIllustrationViewWithImageRawResource(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v6

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140211

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    const/4 v4, 0x4

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;-><init>(ILjava/lang/CharSequence;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object v1
.end method

.method public static createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0be8

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->setupGestureNavigationTextWithImage(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0bea

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->setupGestureNavigationTextWithImage(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0be9

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static setupGestureNavigationTextWithImage(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    const v0, 0x7f0a07c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const v1, 0x7f080192

    goto :goto_0

    :cond_0
    const v1, 0x7f080191

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a06d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const p0, 0x7f140200

    goto :goto_1

    :cond_1
    const p0, 0x7f1401ff

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public static showGestureNavigationTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    sget-object p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->ON_CLICK_LISTENER:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda6;

    const v1, 0x7f1401f7

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static updateTutorialNegativeButtonTextAndVisibility(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;I)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget p1, p1, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1401fb

    goto :goto_1

    :cond_1
    const p0, 0x7f1401f8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    :cond_2
    return-void
.end method
