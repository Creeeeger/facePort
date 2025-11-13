.class public final synthetic Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIInitializer;

.field public final synthetic f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

.field public final synthetic f$2:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SystemUIInitializer;

    iput-object p2, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

    iput-object p3, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$2:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/SystemUIInitializer;

    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/dagger/WMComponent$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;->f$2:Landroid/os/HandlerThread;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/SystemUIInitializer;->$r8$lambda$fBfwJ9DNI3xhFIGRtch-IdPgV14(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    return-void
.end method
