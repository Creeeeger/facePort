.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/IndicationEventType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
