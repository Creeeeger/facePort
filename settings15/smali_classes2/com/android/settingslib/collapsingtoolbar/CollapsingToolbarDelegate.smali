.class public final Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public mContentFrameLayout:Landroid/widget/FrameLayout;

.field public final mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;

    return-void
.end method
