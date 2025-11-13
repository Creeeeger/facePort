.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BarType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarType;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/bar/BarType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/bar/BarType;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarType;->getCls()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarType;->getCls()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
