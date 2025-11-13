.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

.field mTitleView:Landroid/widget/CheckedTextView;

.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroid/view/View;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    .line 498
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 499
    sget p1, Lcom/android/settings/R$id;->screen_mode_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    .line 500
    sget p1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CheckableLinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    return-void
.end method
