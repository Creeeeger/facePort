.class public final Lcom/android/systemui/keyguard/WorkLockActivityHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public blankView:Landroid/view/View;

.field public isblankView:Z

.field public final mActivity:Landroid/app/Activity;

.field public final mContext:Landroid/content/Context;

.field public final mUserId:I

.field public mwLockScreen:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method public final setContentblank(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/high16 p1, 0x8000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    :cond_1
    :goto_0
    return-void
.end method
