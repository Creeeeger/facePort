.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->updateTouchRegions()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mTrackedViews:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$1;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mOnLayoutChangeListener:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->updateTouchRegions()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/touch/TouchInsetManager;

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    invoke-virtual {v0, p0}, Lcom/android/systemui/touch/TouchInsetManager;->recycleRegions(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;)V

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager;->mSessionRegions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager;->updateTouchInsets()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
