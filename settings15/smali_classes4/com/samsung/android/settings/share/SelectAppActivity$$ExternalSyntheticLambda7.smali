.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    sget v0, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$clinit:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
