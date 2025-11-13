.class public Lcom/android/wm/shell/compatui/RestartDialogLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/compatui/DialogContainerSupplier;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackgroundDim:Landroid/graphics/drawable/Drawable;

.field public mDialogContainer:Landroid/view/View;

.field public mDialogTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/compatui/RestartDialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getDialogContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0630

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a062f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f0a0632

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    const v2, 0x7f0a0636

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mBackgroundDim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/RestartDialogLayout;->mDialogContainer:Landroid/view/View;

    new-instance v2, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setDismissOnClickListener(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda1;

    check-cast p1, Lcom/android/wm/shell/compatui/RestartDialogWindowManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/compatui/RestartDialogLayout$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    move-object p1, v0

    :goto_0
    const v0, 0x7f0a0634

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
