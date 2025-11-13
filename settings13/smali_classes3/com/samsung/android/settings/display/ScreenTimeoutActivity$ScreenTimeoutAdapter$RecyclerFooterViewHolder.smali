.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerFooterViewHolder"
.end annotation


# instance fields
.field mFooterView:Landroid/view/View;

.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroid/view/View;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    .line 281
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 282
    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$RecyclerFooterViewHolder;->mFooterView:Landroid/view/View;

    return-void
.end method
