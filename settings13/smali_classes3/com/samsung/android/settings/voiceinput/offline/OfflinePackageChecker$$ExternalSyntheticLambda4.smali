.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/reactivex/ObservableEmitter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$1:Lio/reactivex/ObservableEmitter;

    iput-boolean p3, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$1:Lio/reactivex/ObservableEmitter;

    iget-boolean p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda4;->f$2:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->$r8$lambda$28---BQKOpEsGWoh6h29QXyoMW4(Landroid/content/Context;Lio/reactivex/ObservableEmitter;ZLjava/util/List;)V

    return-void
.end method
