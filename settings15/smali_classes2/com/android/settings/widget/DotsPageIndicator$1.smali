.class public final Lcom/android/settings/widget/DotsPageIndicator$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return-void
.end method
