.class Landroid/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DropDownListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/DropDownListView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 2

    .line 390
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 391
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method public greylist-max-o post()V
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public whitelist test-api run()V
    .locals 2

    .line 385
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 386
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->drawableStateChanged()V

    .line 387
    return-void
.end method
