.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    packed-switch p2, :pswitch_data_0

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    return-void

    :pswitch_0
    const/16 p1, 0xc

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleData;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleData;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
