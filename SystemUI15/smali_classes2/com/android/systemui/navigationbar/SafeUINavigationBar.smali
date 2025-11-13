.class public final Lcom/android/systemui/navigationbar/SafeUINavigationBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    const-string v0, "SafeUINavigationBar"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iget-object p0, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0328

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    const v1, 0x7f0a090c

    invoke-virtual {p0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/SafeUINavigationBarView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    iget-object v4, v2, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "SafeUINavigationBarView"

    const-string v1, "NavigationBar addView Exception :"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
