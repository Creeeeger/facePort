.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $domainType:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->$domainType:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->$domainType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_3

    const/16 v3, 0x65

    if-eq v1, v3, :cond_1

    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x22a6

    goto :goto_0

    :cond_0
    const/16 v0, 0x22a0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x22ba

    goto :goto_0

    :cond_2
    const/16 v0, 0x22b4

    goto :goto_0

    :cond_3
    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x2292

    goto :goto_0

    :cond_4
    const/16 v0, 0x228c

    goto :goto_0

    :cond_5
    iget-boolean v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x2286

    goto :goto_0

    :cond_6
    const/16 v0, 0x226e

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    const-string v0, "access$getContext$p(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter$setShowMoreItem$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->isShowMoreItem:Z

    if-eqz p0, :cond_8

    const p0, 0x7f140f37

    goto :goto_2

    :cond_8
    const p0, 0x7f14096e

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_9
    return-void
.end method
