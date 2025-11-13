.class public final Lcom/android/systemui/aibrief/ui/BriefViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field private static final BRIGHTNESS_FOR_AOD:F = 0.3f

.field public static final Companion:Lcom/android/systemui/aibrief/ui/BriefViewController$Companion;

.field private static final FOUR_STAR_ANIMATION_DURATION:J = 0x96L

.field private static final NOWBAR_SUBTEXT_VIEW_ALPHA:F = 0.6f

.field private static final NOWBAR_VIEW_ALPHA:F = 0.7f

.field private static final PARAM_KEY_EXPIRY_TIME_MILLIS:Ljava/lang/String; = "expiryTimeMillis"

.field private static final PARAM_KEY_PUBLISHER_LABEL:Ljava/lang/String; = "publisherLabel"

.field private static final PARAM_KEY_RESOURCE_DIGEST:Ljava/lang/String; = "resourceDigest"

.field private static final PARAM_KEY_TAG:Ljava/lang/String; = "tag"

.field public static final SUGGESTION_DATA_KEY:Ljava/lang/String; = "data"

.field public static final SUGGESTION_EXPAND_REMOTE_VIEWS_KEY:Ljava/lang/String; = "expandRemoteViews"

.field public static final SUGGESTION_NORMAL_REMOTE_VIEWS_KEY:Ljava/lang/String; = "normalRemoteViews"

.field public static final TAG:Ljava/lang/String; = "BriefViewController"

.field private static final TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final URI_AUTHORITY:Ljava/lang/String; = "blobstore"

.field public static final URI_PATH_ANIMATED_IMAGE:Ljava/lang/String; = "animatedimage"

.field public static final URI_PATH_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final URI_PATH_HANDLE:Ljava/lang/String; = "handle"

.field private static final URI_SCHEME:Ljava/lang/String; = "contextualinsight"


# instance fields
.field private briefNowBarImage:Lcom/airbnb/lottie/LottieAnimationView;

.field private briefNowFourStarImage:Lcom/airbnb/lottie/LottieAnimationView;

.field private final context:Landroid/content/Context;

.field private iconContainer:Landroid/widget/FrameLayout;

.field private isDarkModeApplied:Z

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final lastConfiguration:Landroid/content/res/Configuration;

.field private final logger:Lcom/android/systemui/aibrief/log/BriefLogger;

.field private mainText:Landroid/widget/TextView;

.field private nowBarBg:Landroid/graphics/drawable/GradientDrawable;

.field private nowBarData:Lcom/android/systemui/aibrief/data/NowBarData;

.field private nowBarView:Landroid/view/View;

.field private subText:Landroid/widget/TextView;

.field private suggestionContainerWidget:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/aibrief/ui/BriefViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aibrief/ui/BriefViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/aibrief/ui/BriefViewController;->Companion:Lcom/android/systemui/aibrief/ui/BriefViewController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/aibrief/ui/BriefViewController;->$stable:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/aibrief/ui/BriefViewController;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/aibrief/log/BriefLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    iput-object p3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->lastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public static final synthetic access$dismissAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->dismissAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static final synthetic access$getIconContainer$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Lcom/android/systemui/aibrief/log/BriefLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    return-object p0
.end method

.method public static final synthetic access$getSubText$p(Lcom/android/systemui/aibrief/ui/BriefViewController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->subText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$initAnimatedViews(Lcom/android/systemui/aibrief/ui/BriefViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->initAnimatedViews()V

    return-void
.end method

.method public static final synthetic access$startFourStarAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->startFourStarAnimation()V

    return-void
.end method

.method public static final synthetic access$translationAnimation(Lcom/android/systemui/aibrief/ui/BriefViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->translationAnimation()V

    return-void
.end method

.method private final dismissAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;Lcom/android/systemui/aibrief/ui/BriefViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$2;

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController$dismissAnimation$1$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic getBackground$default(Lcom/android/systemui/aibrief/ui/BriefViewController;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getBackground(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getConvertedHSBColor(Ljava/lang/Integer;F)I
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_0
    const/4 p1, 0x2

    aput p2, p0, p1

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private final getDrawableFromUri(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BriefViewController"

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/aibrief/log/BriefLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static synthetic getNowBarBackground$default(Lcom/android/systemui/aibrief/ui/BriefViewController;ZILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getNowBarBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method private final getUriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final initAnimatedViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->subText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/16 v3, 0xa

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final isDarkMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final needToSkipAnimation(Landroid/widget/FrameLayout;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BriefViewController"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0a0cd0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "keyguard occluded, skip animation"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/aibrief/log/BriefLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "R.id.suggestion_container is not attached"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/aibrief/log/BriefLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "R.layout.suggestion_container_widget is not attached or View.GONE"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/aibrief/log/BriefLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private final setBriefImageURI(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->toBlobHandle(Ljava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void

    :cond_1
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    const-class v2, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/blob/BlobStoreManager;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v4, 0x2000

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v4, [B

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_1
    if-ltz v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6d87f268

    if-eq v4, v5, :cond_8

    const v5, -0x31437f62

    if-eq v4, v5, :cond_4

    goto :goto_4

    :cond_4
    const-string v4, "drawable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p2, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_2
    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_8
    const-string v4, "animatedimage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p2, :cond_a

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_3

    :cond_a
    move-object p0, v3

    :goto_3
    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :goto_6
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_8
    return-void
.end method

.method private final setIconBackground(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "icon bg uri :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BriefViewController"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getDrawableFromUri(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string p1, "icon bg is null"

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final showAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/aibrief/ui/BriefViewController$showAnimation$1$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final startFourStarAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->briefNowFourStarImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-direct {p0, v0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->showAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    new-instance v1, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/aibrief/ui/BriefViewController$startFourStarAnimation$1$1;-><init>(Lcom/android/systemui/aibrief/ui/BriefViewController;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private final toBlobHandle(Ljava/lang/String;)Landroid/app/blob/BlobHandle;
    .locals 5

    const-string p0, "contextualinsight://blobstore/handle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "resourceDigest"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_2
    const-string v1, "publisherLabel"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "expiryTimeMillis"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "tag"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1, v1, v2, v3, p0}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    :goto_2
    check-cast v0, Landroid/app/blob/BlobHandle;

    return-object v0
.end method

.method private final translationAnimation()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/aibrief/ui/BriefViewController;->TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/aibrief/ui/BriefViewController$translationAnimation$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/aibrief/ui/BriefViewController$translationAnimation$1$1$1;-><init>(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private final uiModeChanged(Landroid/content/res/Configuration;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    iget-boolean p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkModeApplied:Z

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final updateNowBarResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f070062

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->subText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f070068

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->briefNowBarImage:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->briefNowFourStarImage:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    if-eqz v0, :cond_5

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    if-eqz p0, :cond_6

    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final createBriefNowBarView(Lcom/android/systemui/aibrief/data/NowBarData;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->lastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    const v1, 0x7f0d0029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarData:Lcom/android/systemui/aibrief/data/NowBarData;

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkModeApplied:Z

    if-eqz p1, :cond_7

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, v4, v2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getNowBarBackground$default(Lcom/android/systemui/aibrief/ui/BriefViewController;ZILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v4, "BriefViewController"

    const-string v5, "bg should be empty by LOCKUI_NOW_BAR_SUPPORT_GUIDING_EFFECT"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0a00b1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    const v3, 0x7f0a00b7

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->subText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const/16 v5, 0x8

    if-nez v4, :cond_1

    iput-object v2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->subText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v3, 0x7f0a00b6

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v3, :cond_3

    iput-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->briefNowBarImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getIcon()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/aibrief/ui/BriefViewController;->setBriefImageURI(Landroid/widget/ImageView;Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const v3, 0x7f0a00b4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getIconBackground()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->setIconBackground(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getIconBackgroundForDark()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->setIconBackground(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    :cond_5
    :goto_2
    move-object v2, v3

    :cond_6
    iput-object v2, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0a00b3

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/aibrief/ui/BriefViewController$createBriefNowBarView$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/android/systemui/aibrief/ui/BriefViewController;)V

    invoke-static {v0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final createExpandRemoteView(Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1

    const-string p0, "expandRemoteViews"

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final createFullView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0525

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->suggestionContainerWidget:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarBg:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v3, :cond_1

    const v1, 0x7f0806b3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->suggestionContainerWidget:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final createNormalRemoteView(Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1

    const-string p0, "normalRemoteViews"

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final getBackground(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarData:Lcom/android/systemui/aibrief/data/NowBarData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarData:Lcom/android/systemui/aibrief/data/NowBarData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/aibrief/data/NowBarData;->getBackgroundForDark()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarData:Lcom/android/systemui/aibrief/data/NowBarData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/aibrief/data/NowBarData;->getBackground()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getConvertedHSBColor(Ljava/lang/Integer;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final getNowBarBackground(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->getBackground(Z)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_1
    return-object p0
.end method

.method public final hideContainer()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->suggestionContainerWidget:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x40001400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->updateNowBarResources()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkModeApplied:Z

    return-void
.end method

.method public final setNowBarBackground(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const p1, 0x7f0806b3

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public final setNowBarIconBackgroundOnUpdate(Lcom/android/systemui/aibrief/data/NowBarData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->logger:Lcom/android/systemui/aibrief/log/BriefLogger;

    const-string v1, "BriefViewController"

    const-string v2, "set icon bg on now bar update"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/aibrief/log/BriefLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->nowBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/aibrief/ui/BriefViewController;->isDarkMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getIconBackground()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->setIconBackground(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/aibrief/data/NowBarData;->getIconBackgroundForDark()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->setIconBackground(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showCircleAnimation(Ljava/lang/Runnable;)V
    .locals 12

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->suggestionContainerWidget:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->needToSkipAnimation(Landroid/widget/FrameLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->context:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const v3, 0x7f0a0cd0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v5, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v5, 0x2

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-double v7, v5

    int-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v5, v7

    const-string v7, "alpha"

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v3, v6, v4, v8, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e2e147b    # 0.17f

    invoke-direct {v4, v6, v6, v5, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v7, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/aibrief/ui/BriefViewController$showCircleAnimation$1$1;-><init>(Lcom/android/systemui/aibrief/ui/BriefViewController;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateViewAlpha(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->mainText:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->iconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/aibrief/ui/BriefViewController;->briefNowBarImage:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    return-void
.end method
