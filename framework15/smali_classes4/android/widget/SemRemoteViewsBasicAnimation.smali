.class public Landroid/widget/SemRemoteViewsBasicAnimation;
.super Landroid/widget/SemRemoteViewsAnimation;
.source "SemRemoteViewsBasicAnimation.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemRemoteViewsBasicAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemRemoteViewsBasicAnimation"

.field public static final whitelist TYPE_TEXT_SWITCHER:Ljava/lang/String; = "text_switcher"

.field private static final blacklist TYPE_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private final blacklist mAnimationType:Ljava/lang/String;

.field private final blacklist mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemRemoteViewsBasicAnimation$1;

    invoke-direct {v0}, Landroid/widget/SemRemoteViewsBasicAnimation$1;-><init>()V

    sput-object v0, Landroid/widget/SemRemoteViewsBasicAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    iput-object p2, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mAnimationType:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private blacklist animateTextSwitcher(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    const-string/jumbo v4, "translationY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v1, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    nop

    new-array v8, v0, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Landroid/widget/SemRemoteViewsBasicAnimation$2;

    invoke-direct {v8, p0, p1, p2}, Landroid/widget/SemRemoteViewsBasicAnimation$2;-><init>(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v8, v0, [F

    fill-array-data v8, :array_2

    invoke-static {p1, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v8, v0, [F

    fill-array-data v8, :array_3

    invoke-static {p1, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-eqz v2, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    nop

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v6, Landroid/widget/SemRemoteViewsBasicAnimation$3;

    invoke-direct {v6, p0, p1}, Landroid/widget/SemRemoteViewsBasicAnimation$3;-><init>(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    nop

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v7, v0, v9

    aput-object v5, v0, v10

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3db80000    # -50.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data
.end method

.method public static blacklist writeToParcel(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemRemoteViewsBasicAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist endAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected blacklist startAnimation(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mIsExpired:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "text_switcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "new_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Landroid/widget/SemRemoteViewsBasicAnimation;->animateTextSwitcher(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    nop

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x66bfca4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/SemRemoteViewsAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsBasicAnimation;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
