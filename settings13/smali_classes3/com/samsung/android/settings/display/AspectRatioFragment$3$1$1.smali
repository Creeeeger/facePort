.class Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;

.field final synthetic val$globalLayoutRequester:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;Landroid/view/View;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;->val$globalLayoutRequester:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;->val$globalLayoutRequester:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    .line 565
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$1;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method
