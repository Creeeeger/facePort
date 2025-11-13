.class public final Lcom/google/android/setupdesign/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field public final useBottomProgressBar:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudProgressBarMixin:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    return-void
.end method


# virtual methods
.method public final peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0ca8

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0cbf

    :goto_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method
