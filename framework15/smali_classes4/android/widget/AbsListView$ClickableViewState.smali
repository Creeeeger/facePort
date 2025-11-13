.class Landroid/widget/AbsListView$ClickableViewState;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickableViewState"
.end annotation


# instance fields
.field private blacklist mIsFocused:Z

.field private final blacklist mView:Landroid/view/View;

.field private blacklist mWasFocused:Z


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsListView$ClickableViewState;->mView:Landroid/view/View;

    iput-boolean p2, p0, Landroid/widget/AbsListView$ClickableViewState;->mWasFocused:Z

    return-void
.end method


# virtual methods
.method blacklist getIsFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView$ClickableViewState;->mIsFocused:Z

    return v0
.end method

.method blacklist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$ClickableViewState;->mView:Landroid/view/View;

    return-object v0
.end method

.method blacklist getWasFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView$ClickableViewState;->mWasFocused:Z

    return v0
.end method

.method blacklist setIsFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView$ClickableViewState;->mIsFocused:Z

    return-void
.end method

.method blacklist setWasFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView$ClickableViewState;->mWasFocused:Z

    return-void
.end method
