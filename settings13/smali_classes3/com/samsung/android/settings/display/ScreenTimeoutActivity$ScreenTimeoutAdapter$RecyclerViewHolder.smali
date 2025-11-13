.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

.field mData:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

.field mTitleView:Landroid/widget/CheckedTextView;

.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroid/view/View;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    .line 271
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 272
    sget p1, Lcom/android/settings/R$id;->timeout_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/CheckedTextView;

    .line 273
    sget p1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CheckableLinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    return-void
.end method
