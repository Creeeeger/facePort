.class Lcom/samsung/android/settings/display/AspectRatioFragment$6;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;->setEmptyTextYPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;)V
    .locals 0

    .line 1037
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAspectRatioLayout(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAspectRatioLayout(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmAspectRatioLayout(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1044
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$6;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/AspectRatioFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
