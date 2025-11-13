.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

.field public final bubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final dismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

.field public final dragListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;

.field public final expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public expandedViewInitialTranslationX:F

.field public expandedViewInitialTranslationY:F

.field public isStuckToDismiss:Z

.field public final magnetizedExpandedView:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

.field public final pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/common/bubbles/DismissView;Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->bubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dragListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;

    sget-object p3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->Companion:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    sget-object p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    new-instance p6, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-direct {p6, p1, p3, p4, p5}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;-><init>(Landroid/view/View;Landroid/content/Context;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->magnetizedExpandedView:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V

    iput-object p3, p6, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$1;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V

    iput-object p3, p6, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    new-instance p3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object p2, p2, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    invoke-direct {p3, p2, p4}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    iget-object p2, p6, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance p4, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {p4, p3}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    new-instance p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
