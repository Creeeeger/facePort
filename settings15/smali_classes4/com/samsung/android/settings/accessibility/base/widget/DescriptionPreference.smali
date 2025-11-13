.class public Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public animationMaxFrame:I

.field public animationMinFrame:I

.field public final animationRawResId:I

.field public imageContentDescription:Ljava/lang/String;

.field public mImageUri:Landroid/net/Uri;

.field public final showBottomPadding:Z

.field public final showFullSizeImage:Z

.field public final showTopPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showTopPadding:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showBottomPadding:Z

    iput v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationMaxFrame:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationMinFrame:I

    const v2, 0x7f0d050e

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/android/settings/R$styleable;->DescriptionPreference:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    move p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge p2, v2, :cond_5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showTopPadding:Z

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showBottomPadding:Z

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showFullSizeImage:Z

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    :cond_3
    if-ne v2, v1, :cond_4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationRawResId:I

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final applyDescriptionPadding(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07031c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, p0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a1074

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0252

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget-boolean v8, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showTopPadding:Z

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    :goto_0
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showBottomPadding:Z

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_b

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    iget v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationRawResId:I

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    :cond_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationRawResId:I

    if-eqz v0, :cond_5

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    iget v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationRawResId:I

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->mImageUri:Landroid/net/Uri;

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot find content uri: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "DescriptionPreference"

    invoke-static {v12, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    :goto_2
    new-instance v10, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;)V

    iput-object v10, v4, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    new-instance v10, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/io/InputStream;)V

    new-instance v12, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;-><init>(Ljava/io/InputStream;)V

    invoke-static {v11, v10, v12}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_6
    :goto_3
    iget v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationMinFrame:I

    if-nez v0, :cond_7

    iget v10, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationMaxFrame:I

    if-eqz v10, :cond_9

    :cond_7
    iget v10, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationMaxFrame:I

    iget-object v11, v4, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v12, v11, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v12, :cond_8

    iget-object v12, v11, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v13, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v13, v11, v0, v10}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v11, v11, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float v0, v0

    int-to-float v10, v10

    const v12, 0x3f7d70a4    # 0.99f

    add-float/2addr v10, v12

    invoke-virtual {v11, v0, v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showFullSizeImage:Z

    if-eqz v0, :cond_a

    const v0, 0x7fffffff

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->imageContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_b
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x102003e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v4, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->animationRawResId:I

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-boolean v4, v1, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->showFullSizeImage:Z

    if-eqz v4, :cond_e

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_e
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0604f4

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v4, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_f
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v10, 0x1020016

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_12

    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v12

    new-instance v13, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v13}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x7

    if-ne v10, v8, :cond_10

    invoke-virtual {v1, v4, v9}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->applyDescriptionPadding(Landroid/view/View;Z)V

    invoke-virtual {v13, v11, v6, v12, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v11, v15, v5, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v12, v7, v11, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v12, v14, v3, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070314

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070318

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-virtual {v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_11

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v1, v4, v9}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;->applyDescriptionPadding(Landroid/view/View;Z)V

    const/4 v1, 0x0

    invoke-virtual {v13, v11, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v11, v15, v12, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v12, v7, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v12, v14, v11, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    :goto_6
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_12
    move v1, v7

    :goto_7
    iput-boolean v1, v2, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v1, v2, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    return-void
.end method
