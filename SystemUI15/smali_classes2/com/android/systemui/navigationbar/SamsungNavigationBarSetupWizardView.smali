.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public a11yBtn:Landroid/widget/ImageView;

.field public a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public a11yRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

.field public backAltRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

.field public backRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

.field public hints:I

.field public imeBtn:Landroid/widget/ImageView;

.field public imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public prevBtn:Landroid/widget/ImageView;

.field public prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public setupWizardView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static sendEvent$default(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;I)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v12, 0x101

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    move-object v0, p0

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0338

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const v2, 0x7f0a090c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    const v4, 0x7f07047b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    const v2, 0x7f0a0910

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v3, :cond_4

    move-object v3, v1

    :cond_4
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backAltRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v2, :cond_5

    move-object v2, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_6

    move-object v0, v1

    :cond_6
    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    new-instance v0, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v3, :cond_7

    move-object v3, v1

    :cond_7
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yRipple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v2, :cond_8

    move-object v2, v1

    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    const v2, 0x7f0a090d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    move-object v0, v1

    :cond_a
    const v2, 0x7f0a0524

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v2, :cond_c

    move-object v2, v1

    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v2, :cond_d

    move-object v2, v1

    :cond_d
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    new-instance v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    move-object v1, p0

    :goto_0
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final updateResources()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080ac7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080acb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080ac5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130fa0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130033

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
