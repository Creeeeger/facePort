.class public Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;


# instance fields
.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 40
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
