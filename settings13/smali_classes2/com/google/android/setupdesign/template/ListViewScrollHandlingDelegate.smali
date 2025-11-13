.class public Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ListViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final listView:Landroid/widget/ListView;

.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ListView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 45
    iput-object p2, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    .line 77
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
