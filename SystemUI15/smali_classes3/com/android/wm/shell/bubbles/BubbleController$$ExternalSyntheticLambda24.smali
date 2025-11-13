.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleProperties:Lcom/android/wm/shell/bubbles/properties/BubbleProperties;

    check-cast p0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "persist.wm.debug.bubble_bar"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;->_isBubbleBarEnabled:Z

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->setUpBubbleViewsForMode()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView(Z)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
