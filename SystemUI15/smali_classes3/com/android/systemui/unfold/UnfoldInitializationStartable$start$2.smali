.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;

    invoke-direct {v0}, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/FoldStateLoggingProvider;

    check-cast p1, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;

    iget-object p0, p1, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    check-cast p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->start()V

    return-void
.end method
