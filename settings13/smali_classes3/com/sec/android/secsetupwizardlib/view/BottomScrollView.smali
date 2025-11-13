.class public Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field private isBottomReached:Z

.field mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return-void
.end method


# virtual methods
.method public getOnBottomReachedListener()Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    return-object p0
.end method

.method public isBottomReached()Z
    .locals 4

    .line 28
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    .line 36
    :cond_1
    iget-boolean p0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached:Z

    return p0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->isBottomReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;->onBottomReached()V

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnBottomReachedListener(Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onBottomReachedListener"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/view/BottomScrollView;->mListener:Lcom/sec/android/secsetupwizardlib/view/BottomScrollView$OnBottomReachedListener;

    return-void
.end method
