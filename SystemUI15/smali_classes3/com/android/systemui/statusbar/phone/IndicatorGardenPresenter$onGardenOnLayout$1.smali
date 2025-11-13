.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $garden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;->$garden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;->$garden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method
