.class public final Landroidx/appcompat/app/AlertController$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/app/AlertController$2;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertController$2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    iget v2, v1, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    if-eq v0, v2, :cond_b

    iget-object v0, v1, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0a08bd

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0d3d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0a5f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0d59

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a021f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0324

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a02d3

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_1

    move v4, v8

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v10

    :goto_2
    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_3

    goto :goto_3

    :cond_3
    move v8, v10

    :goto_3
    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    const v8, 0x7f071230

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v10, v8, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    if-eqz v2, :cond_8

    const v0, 0x7f07122c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    if-nez v7, :cond_7

    invoke-virtual {v2, v0, v10, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    const v4, 0x7f07122f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v0, v10, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    const v0, 0x7f071211

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f071210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f07120c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v0, v10, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    if-eqz v5, :cond_a

    const v0, 0x7f071215

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f071214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v0, v10, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->val$parentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_b
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    return-void
.end method
