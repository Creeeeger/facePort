.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$2:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda0;->f$2:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->$r8$lambda$A28uqKY0vS1V5puDAZ10zpvV1WE(Landroid/content/Context;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
