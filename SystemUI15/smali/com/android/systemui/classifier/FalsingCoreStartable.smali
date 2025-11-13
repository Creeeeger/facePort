.class public final Lcom/android/systemui/classifier/FalsingCoreStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCoreStartable;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCoreStartable;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->init()V

    return-void
.end method
