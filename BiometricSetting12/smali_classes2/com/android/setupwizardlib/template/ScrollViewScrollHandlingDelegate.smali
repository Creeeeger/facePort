.class public Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollViewDelegate"


# instance fields
.field private final requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field private final scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    instance-of v0, p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/setupwizardlib/view/BottomScrollView;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollViewDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    :goto_0
    return-void
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public pageScrollDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/BottomScrollView;->pageScroll(I)Z

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->setBottomScrollListener(Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "ScrollViewDelegate"

    const-string v1, "Cannot require scroll. Scroll view is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
