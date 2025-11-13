.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

.field public final iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;->connectivityRepository:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;

    return-void
.end method


# virtual methods
.method public final bindGroup(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter$bindGroup$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter$bindGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
