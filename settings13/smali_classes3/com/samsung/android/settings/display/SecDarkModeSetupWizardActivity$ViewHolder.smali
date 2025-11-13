.class Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SecDarkModeSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final itemView:Landroid/view/View;

.field private final radioButton:Landroid/widget/RadioButton;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$9g6jT2kAm6VMOknPUHV7U8qeXVM(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->lambda$bind$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E46E807XbmB-xoyS19aPI3IMHKQ(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->lambda$bind$1(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ho4UmdGRdGOHOfH5EfZXX4PLGN0(Landroidx/core/util/Consumer;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->lambda$bind$0(Landroidx/core/util/Consumer;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    .line 118
    sget v0, Lcom/android/settings/R$id;->radio_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 119
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method private static synthetic lambda$bind$0(Landroidx/core/util/Consumer;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$bind$1(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private static synthetic lambda$bind$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    const p1, 0x3f19999a    # 0.6f

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bind(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Landroidx/core/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;",
            "Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;",
            "Landroidx/core/util/Consumer<",
            "Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->titleView:Landroid/widget/TextView;

    iget v1, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->stringRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->drawableRes:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p3, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->post(Ljava/lang/Runnable;)Z

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$ViewHolder$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
