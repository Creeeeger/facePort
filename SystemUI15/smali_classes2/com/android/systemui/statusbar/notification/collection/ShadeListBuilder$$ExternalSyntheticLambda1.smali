.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;->onBeforeFinalizeFilter(Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;->onBeforeRenderList(Ljava/util/List;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeTransformGroupsListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeTransformGroupsListener;->onBeforeTransformGroups(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
