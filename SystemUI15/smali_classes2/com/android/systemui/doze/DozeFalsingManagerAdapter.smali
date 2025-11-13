.class public final Lcom/android/systemui/doze/DozeFalsingManagerAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-void
.end method


# virtual methods
.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0, p2}, Lcom/android/systemui/classifier/FalsingCollector;->setShowingAod(Z)V

    return-void
.end method
