.class public final Lcom/android/systemui/keyguard/ui/binder/SideFpsProgressBarViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final logger:Lcom/android/systemui/log/SideFpsLogger;

.field public final view:Lcom/android/systemui/keyguard/ui/view/SideFpsProgressBar;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;Lcom/android/systemui/keyguard/ui/view/SideFpsProgressBar;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/SideFpsLogger;Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
