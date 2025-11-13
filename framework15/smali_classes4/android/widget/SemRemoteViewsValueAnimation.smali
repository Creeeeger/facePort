.class public Landroid/widget/SemRemoteViewsValueAnimation;
.super Landroid/widget/SemRemoteViewsAnimation;
.source "SemRemoteViewsValueAnimation.java"


# static fields
.field private static final blacklist ANIMATION_TYPE_LAYOUT_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field private static final blacklist ANIMATION_TYPE_LAYOUT_PARAMS_WIDTH:Ljava/lang/String; = "width"

.field public static final whitelist ANIMATION_TYPE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final blacklist ANIMATION_TYPE_TEXTVIEW_DECIMAL_TEXT:Ljava/lang/String; = "decimal_text"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemRemoteViewsValueAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemRemoteViewsValueAnimation"

.field public static final whitelist VALUE_TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final whitelist VALUE_TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final whitelist VALUE_TYPE_INT:Ljava/lang/String; = "int"


# instance fields
.field private final blacklist mAnimationType:Ljava/lang/String;

.field private blacklist mDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private blacklist mDecimalFormatString:Ljava/lang/String;

.field private final blacklist mDuration:J

.field private final blacklist mFloatValueFrom:F

.field private final blacklist mFloatValueTo:F

.field private final blacklist mIntValueFrom:I

.field private final blacklist mIntValueTo:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mInterpolatorResId:I

.field private final blacklist mIsValidArgument:Z

.field private blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mValueType:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$UNkql_Edwv7lPUyJFJkeoJhGmrI(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XzKVLk4Y5G6CYrLXQrZxIg6ivuw(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$1(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemRemoteViewsValueAnimation$2;

    invoke-direct {v0}, Landroid/widget/SemRemoteViewsValueAnimation$2;-><init>()V

    sput-object v0, Landroid/widget/SemRemoteViewsValueAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;FFJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;FFJLandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFJLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string v0, "decimal_text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "float"

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    :goto_0
    iput p4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iput p5, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    iput-wide p6, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-direct {p0}, Landroid/widget/SemRemoteViewsValueAnimation;->checkArgumentValidation()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    iput-object p8, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;IIJLandroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IIJLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string v0, "decimal_text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "int"

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    iput p4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iput p5, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    iput-wide p6, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-direct {p0}, Landroid/widget/SemRemoteViewsValueAnimation;->checkArgumentValidation()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    iput-object p8, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    return-void
.end method

.method private blacklist checkArgumentValidation()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "decimal_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    const-string v0, "int"

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    :goto_2
    if-nez v0, :cond_1

    const-string v1, "SemRemoteViewsValueAnimation"

    const-string v2, "Illegal Argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$provideAnimatorUpdateListener$0(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private synthetic blacklist lambda$provideAnimatorUpdateListener$1(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$provideAnimatorUpdateListener$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    :cond_0
    const-string v0, "float"

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextWithSpannableString(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    goto :goto_2

    :cond_2
    const-string v0, "int"

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextWithSpannableString(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "missed value type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemRemoteViewsValueAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private blacklist provideAnimatorListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "decimal_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Landroid/widget/SemRemoteViewsValueAnimation$1;

    invoke-direct {v1, p0}, Landroid/widget/SemRemoteViewsValueAnimation$1;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;)V

    move-object v0, v1

    nop

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist provideAnimatorUpdateListener(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "decimal_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "SemRemoteViewsValueAnimation"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;)V

    move-object v0, v2

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "targetView is not TextView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v2, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda1;-><init>(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    move-object v0, v2

    goto :goto_2

    :pswitch_2
    instance-of v1, p1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ProgressBar;)V

    move-object v0, v2

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "targetView is not ProgressBar"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_3
        -0x3bab3dd3 -> :sswitch_2
        0x6be2dc6 -> :sswitch_1
        0xbf0555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist writeToParcel(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemRemoteViewsValueAnimation;->writeToParcel(Landroid/os/Parcel;I)V

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

.method public greylist hidden_setInterpolator(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    return-void
.end method

.method public whitelist semSetInterpolator(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    return-void
.end method

.method protected blacklist startAnimation(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    if-nez v0, :cond_0

    const-string v0, "SemRemoteViewsValueAnimation"

    const-string v1, "Illegal Argument"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    nop

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    iget-object v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    iget-wide v4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_5
    goto :goto_0

    :sswitch_0
    const-string v4, "float"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "color"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v7

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iget v3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1

    :pswitch_1
    new-instance v2, Landroid/animation/IntEvaluator;

    invoke-direct {v2}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    iget v3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Landroid/animation/FloatEvaluator;

    invoke-direct {v2}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget v2, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    iget v3, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    new-array v4, v6, [F

    aput v2, v4, v5

    aput v3, v4, v7

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/SemRemoteViewsValueAnimation;->provideAnimatorUpdateListener(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, v0}, Landroid/widget/SemRemoteViewsValueAnimation;->provideAnimatorListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v4, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsExpired:Z

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v7, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsExpired:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x197ef -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/SemRemoteViewsAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mAnimationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mValueType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueFrom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mFloatValueTo:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIntValueTo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mIsValidArgument:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mDecimalFormatString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mInterpolatorResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation;->mOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
