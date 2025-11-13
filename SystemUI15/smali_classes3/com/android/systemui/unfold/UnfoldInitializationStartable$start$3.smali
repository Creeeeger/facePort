.class public final Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;

    invoke-direct {v0}, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;->INSTANCE:Lcom/android/systemui/unfold/UnfoldInitializationStartable$start$3;

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

    check-cast p1, Lcom/android/systemui/unfold/FoldStateLogger;

    iget-object p0, p1, Lcom/android/systemui/unfold/FoldStateLogger;->foldStateLoggingProvider:Lcom/android/systemui/unfold/FoldStateLoggingProvider;

    check-cast p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
