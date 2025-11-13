.class public final synthetic Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;
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

    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    return-void

    :pswitch_5
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :pswitch_6
    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->setShadeRepository(Lcom/android/systemui/shade/data/repository/ShadeRepository;)V

    return-void

    :pswitch_7
    check-cast p0, Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
