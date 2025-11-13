.class public final Lcom/android/systemui/statusbar/domain/interactor/KeyguardStatusBarInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl;->isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/domain/interactor/KeyguardStatusBarInteractor;->isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
