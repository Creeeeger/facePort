.class public final synthetic Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/LatencyTester;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/LatencyTester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/LatencyTester;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/LatencyTester;

    invoke-virtual {p0}, Lcom/android/systemui/LatencyTester;->updateEnabled()V

    return-void
.end method
