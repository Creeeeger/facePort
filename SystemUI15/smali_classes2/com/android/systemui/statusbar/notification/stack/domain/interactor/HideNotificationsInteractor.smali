.class public final Lcom/android/systemui/statusbar/notification/stack/domain/interactor/HideNotificationsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animationsStatus:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/HideNotificationsInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/HideNotificationsInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/HideNotificationsInteractor;->animationsStatus:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

    return-void
.end method
