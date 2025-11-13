.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
