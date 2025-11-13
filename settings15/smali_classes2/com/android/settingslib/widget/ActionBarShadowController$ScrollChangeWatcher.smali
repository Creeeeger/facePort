.class public final Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_1
    return-void
.end method
