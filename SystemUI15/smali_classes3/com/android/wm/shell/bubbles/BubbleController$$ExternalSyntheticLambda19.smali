.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    :cond_0
    return-object p2

    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->updateExpandedView()V

    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
