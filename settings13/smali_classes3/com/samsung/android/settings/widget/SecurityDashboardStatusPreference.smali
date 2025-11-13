.class public Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;
.super Landroidx/preference/SecPreferenceScreen;
.source "SecurityDashboardStatusPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCriticalCount:I

.field private mIsSlideUpAnimationRunning:Z

.field private mKey:Ljava/lang/String;

.field private mOnScanClickListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;

.field private mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mScan:Landroid/widget/LinearLayout;

.field private mScanCategoryDrawable:Landroid/graphics/drawable/Drawable;

.field private mScanIconPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScanningCategoryIcon:Landroid/widget/ImageView;

.field private mScanningIconLayout:Landroid/view/View;

.field private mScanningWave:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSlideAnimationLayout:Landroid/view/View;

.field private mSlideDownHeight:F

.field private mSlideUpAnimationListener:Landroidx/core/util/Consumer;

.field private mStatusIconView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mVisibleCardsCount:I

.field private mWarningCount:I


# direct methods
.method public static synthetic $r8$lambda$UX2sZfbb5qMQetcezi1dErDCYU8(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->lambda$resetStatusLayout$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmScan(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScan:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanIconPathInterpolator(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/animation/PathInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanIconPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanningIconLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningIconLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanningWave(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningWave:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlideAnimationLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusIconView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusTextView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSlideDownHeight(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideDownHeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScanCategoryIcon(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 233
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 234
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    sget p1, Lcom/android/settings/R$layout;->security_dashboard_status_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 237
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e6147ae    # 0.22f

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanIconPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private synthetic lambda$resetStatusLayout$0()V
    .locals 3

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsSlideUpAnimationRunning:Z

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningIconLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideUpAnimationListener:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 209
    invoke-interface {v0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 210
    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideUpAnimationListener:Landroidx/core/util/Consumer;

    :cond_0
    return-void
.end method

.method private resetStatusLayout(Landroidx/core/util/Consumer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideUpAnimationListener:Landroidx/core/util/Consumer;

    :cond_0
    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsSlideUpAnimationRunning:Z

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanIconPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setSecurityCanBeBetter()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->ic_security_dashboard_status_green:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_good:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->security_dashboard_looks_good:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScan:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScan:Landroid/widget/LinearLayout;

    .line 108
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int v1, p2, p3

    if-lez v1, :cond_0

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p4, 0x8

    :goto_1
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    sget-object p4, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$2;->$SwitchMap$com$samsung$android$settings$privacy$SecurityDashboardConstants$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto/16 :goto_2

    .line 185
    :cond_2
    invoke-direct {p0, p5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->resetStatusLayout(Landroidx/core/util/Consumer;)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setSecurityCanBeBetter()V

    goto/16 :goto_2

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningIconLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->security_dashboard_scanning:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 134
    :cond_5
    invoke-direct {p0, p5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->resetStatusLayout(Landroidx/core/util/Consumer;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    sget p3, Lcom/android/settings/R$drawable;->ic_security_dashboard_status_red:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_warning:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$plurals;->security_dashboard_warning:I

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v2

    invoke-virtual {p0, p3, p2, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 127
    :cond_6
    invoke-direct {p0, p5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->resetStatusLayout(Landroidx/core/util/Consumer;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    sget p2, Lcom/android/settings/R$drawable;->ic_security_dashboard_status_orange:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_suggestion:I

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->security_dashboard_suggestion:I

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v2

    invoke-virtual {p0, p2, p3, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 112
    :cond_7
    invoke-direct {p0, p5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->resetStatusLayout(Landroidx/core/util/Consumer;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    sget p2, Lcom/android/settings/R$drawable;->ic_security_dashboard_status_green:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_good:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->security_dashboard_looks_good:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updateScanCategoryIcon()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanCategoryDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningCategoryIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isScanning()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->savePlayAnimation(Landroid/content/Context;Z)V

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsSlideUpAnimationRunning:Z

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideDownHeight:F

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 242
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 243
    sget v0, Lcom/android/settings/R$id;->status_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    .line 244
    sget v0, Lcom/android/settings/R$id;->status_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusTextView:Landroid/widget/TextView;

    .line 246
    sget v0, Lcom/android/settings/R$id;->security_dashboard_scanning_wave:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningWave:Lcom/airbnb/lottie/LottieAnimationView;

    .line 247
    sget v0, Lcom/android/settings/R$id;->security_dashboard_scanning_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningIconLayout:Landroid/view/View;

    .line 248
    sget v0, Lcom/android/settings/R$id;->security_dashboard_status_category_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanningCategoryIcon:Landroid/widget/ImageView;

    .line 249
    sget v0, Lcom/android/settings/R$id;->security_dashboard_status_slide_animation_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    .line 250
    sget v0, Lcom/android/settings/R$id;->scan:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScan:Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCriticalCount:I

    iget v3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mWarningCount:I

    iget v4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mVisibleCardsCount:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 59
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnScanClickListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;

    if-eqz p1, :cond_0

    .line 60
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnScanClickListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;->onScanClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mIsSlideUpAnimationRunning:Z

    if-nez v0, :cond_0

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mSlideAnimationLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V
    .locals 3

    .line 94
    sget-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", criticalCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", warningCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imgView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOverallStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 97
    iput p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mCriticalCount:I

    .line 98
    iput p3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mWarningCount:I

    .line 99
    iput p4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mVisibleCardsCount:I

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V

    return-void
.end method

.method public setmOnScanClickListener(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnScanClickListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$OnScanClickListener;

    return-void
.end method

.method public updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mScanCategoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon()V

    return-void
.end method
