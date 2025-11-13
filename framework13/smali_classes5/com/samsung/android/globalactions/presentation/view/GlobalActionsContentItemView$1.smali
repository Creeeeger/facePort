.class Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;
.super Ljava/lang/Object;
.source "GlobalActionsContentItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->lambda$setViewAttrs$4$com-samsung-android-globalactions-presentation-view-GlobalActionsContentItemView(Landroid/os/Handler;ILandroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    .line 136
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    invoke-static {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->-$$Nest$fgetmViewStateController(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    invoke-static {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->-$$Nest$fgetmViewModel(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onLongPress()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 142
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView$1;->this$0:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->-$$Nest$fputmIsLongPress(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;Z)V

    .line 145
    :cond_0
    return-void
.end method
