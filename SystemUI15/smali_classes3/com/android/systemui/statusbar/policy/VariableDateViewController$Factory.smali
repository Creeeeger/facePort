.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/shade/ShadeLogger;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    return-void
.end method
