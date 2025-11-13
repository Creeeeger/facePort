.class Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    .line 5668
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 5671
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5672
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmClickTouchDownXY(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 5673
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmClickTouchDownXY(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 5675
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;->this$1:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmSkipAddServiceTarget(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 5677
    :cond_0
    return v1
.end method
