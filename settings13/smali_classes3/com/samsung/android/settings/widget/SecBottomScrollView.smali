.class public Lcom/samsung/android/settings/widget/SecBottomScrollView;
.super Landroid/widget/ScrollView;
.source "SecBottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;->onBottomReached()V

    :cond_0
    return-void
.end method

.method public getOnBottomReachedListener()Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    return-object p0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .line 26
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;->onBottomReached()V

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnBottomReachedListener(Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecBottomScrollView;->mListener:Lcom/samsung/android/settings/widget/SecBottomScrollView$OnBottomReachedListener;

    return-void
.end method
