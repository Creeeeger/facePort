.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BarController;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/bar/BarController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BarController$4;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setCallback(Lcom/android/systemui/qs/bar/BarController$4;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iput-object p0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
