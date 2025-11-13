.class public final Lcom/android/systemui/keyguard/ScreenLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mScreenState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string v0, "ScreenLifecycle"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "ScreenLifecycle:"

    const-string v0, "  mScreenState="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getScreenState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    return p0
.end method
