.class Lcom/samsung/android/app/SemDualAppManager$1;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/SemDualAppManager;->drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$view:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/samsung/android/app/SemDualAppManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/SemDualAppManager$1;->val$view:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 672
    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/SemDualAppManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 673
    .local v0, "dualAppBadge":Landroid/widget/ImageView;
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 674
    .local v1, "density":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803d3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 676
    .local v2, "badgeicon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 679
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x55

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 680
    iget-object v4, p0, Lcom/samsung/android/app/SemDualAppManager$1;->val$view:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v0, v3}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v0    # "dualAppBadge":Landroid/widget/ImageView;
    .end local v1    # "density":I
    .end local v2    # "badgeicon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
