.class Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;
.super Ljava/lang/Object;
.source "SecurityDashboardStatusPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setStatusView(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;IIILandroidx/core/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusTextView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_security_dashboard_scanning_anim_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusIconView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/ImageView;

    move-result-object p2

    .line 159
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 160
    iget-object p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmSlideAnimationLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p2

    const/4 p3, 0x1

    aget p2, p2, p3

    iget-object p4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p4}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmSlideAnimationLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p2, p4

    iget-object p4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p4}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusTextView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/TextView;

    move-result-object p4

    .line 161
    invoke-virtual {p4}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object p4

    aget p3, p4, p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusTextView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/TextView;

    move-result-object p3

    .line 162
    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p4}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusTextView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineCount()I

    move-result p4

    mul-int/2addr p3, p4

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmScan(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmStatusIconView(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$mupdateScanCategoryIcon(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmScanningIconLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmScanningWave(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmSlideAnimationLayout(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fgetmScanIconPathInterpolator(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)Landroid/view/animation/PathInterpolator;

    move-result-object p3

    .line 172
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0x1c2

    .line 173
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->-$$Nest$fputmSlideDownHeight(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;F)V

    return-void
.end method
