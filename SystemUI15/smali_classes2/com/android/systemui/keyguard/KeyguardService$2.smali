.class public final Lcom/android/systemui/keyguard/KeyguardService$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {p0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    return-object p0
.end method
