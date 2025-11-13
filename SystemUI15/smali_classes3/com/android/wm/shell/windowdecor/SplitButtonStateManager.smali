.class public Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsSplitTopDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->mIsSplitTopDown:Z

    return-void
.end method


# virtual methods
.method public final setupSplitButtonState(Landroid/view/ViewGroup;Z)V
    .locals 1

    const v0, 0x7f0a0bf2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/SplitButtonStateManager;->mIsSplitTopDown:Z

    if-eqz p0, :cond_1

    const p0, 0x7f081019

    goto :goto_0

    :cond_1
    const p0, 0x7f081018

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const p0, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
