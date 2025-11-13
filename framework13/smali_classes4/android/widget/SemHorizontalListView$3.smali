.class Landroid/widget/SemHorizontalListView$3;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalListView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalListView;

    .line 4887
    iput-object p1, p0, Landroid/widget/SemHorizontalListView$3;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 4889
    iget-object v0, p0, Landroid/widget/SemHorizontalListView$3;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalListView;->-$$Nest$fgetmDndListAnimator(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDescriptionForAccessibility()V

    .line 4890
    return-void
.end method
