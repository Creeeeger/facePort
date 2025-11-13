.class public final synthetic Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/Toolbar;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewGroup;

    sget v2, Landroidx/appcompat/widget/Toolbar;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/core/view/SeslTouchTargetDelegate;

    invoke-direct {v2, p0}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    iget-object v3, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v6, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-static {v4, v3, v4, v5}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-nez v5, :cond_3

    move v8, v1

    goto :goto_4

    :cond_3
    move v8, v4

    :goto_4
    invoke-static {v8, v1, v4, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    move v1, v0

    :cond_4
    add-int/2addr v5, v0

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_6
    return-void
.end method
