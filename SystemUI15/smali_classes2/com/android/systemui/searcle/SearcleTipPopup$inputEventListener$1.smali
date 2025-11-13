.class public final Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup$inputEventListener$1;->this$0:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->layoutHelper:Lcom/android/systemui/searcle/SearcleTipLayoutHelper;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInputEvent ev = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearcleTipPopup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->bubbleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_4

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-boolean v3, v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isTablet:Z

    iget v4, v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->naviBarHeight:I

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isFoldWithMainDisplay:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isNaviBtnAndLandscape:Z

    if-eqz v0, :cond_2

    iget v0, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hide()V

    :cond_4
    return-void
.end method
