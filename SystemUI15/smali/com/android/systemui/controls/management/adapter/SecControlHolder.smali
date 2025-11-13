.class public final Lcom/android/systemui/controls/management/adapter/SecControlHolder;
.super Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final subtitle:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/android/systemui/controls/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    const v3, 0x7f0a09e4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;-><init>(Landroid/view/View;IILcom/android/systemui/controls/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p4, 0x7f0a0c99

    invoke-virtual {p2, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object p4, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p4, 0x7f070f52

    const v0, 0x3f8ccccd    # 1.1f

    invoke-static {p2, p4, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->subtitle:Landroid/widget/TextView;

    sget-boolean p4, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p4, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07027c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public static synthetic getAnimationView$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final resetForReuse()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->resetForReuse()V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateLottieIcon(Lcom/android/systemui/controls/SecControlInterface;)V
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1}, Lcom/android/systemui/controls/SecControlInterface;->getLottieIconAnimationJson()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/systemui/controls/SecControlInterface;->getLottieIconAnimationJsonCache()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/systemui/controls/SecControlInterface;->getLottieIconAnimationStartFrame()I

    move-result v7

    invoke-interface {p1}, Lcom/android/systemui/controls/SecControlInterface;->getLottieIconAnimationEndFrame()I

    move-result v8

    invoke-interface {p1}, Lcom/android/systemui/controls/SecControlInterface;->getLottieIconAnimationRepeatCount()I

    move-result v9

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/controls/util/ControlsUtil;->updateLottieIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Ljava/lang/String;III)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method
