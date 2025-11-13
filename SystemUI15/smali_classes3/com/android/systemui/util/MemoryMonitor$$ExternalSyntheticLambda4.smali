.class public final synthetic Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/MemoryMonitor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    iput-boolean p2, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/util/MemoryMonitor;

    iget-boolean v1, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$1:Z

    iget p0, p0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/MemoryMonitor;->$r8$lambda$PaSS1c7vhfJI-uh_z_EVwRKE-6M(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    return-void
.end method
