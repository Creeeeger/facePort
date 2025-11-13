.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
