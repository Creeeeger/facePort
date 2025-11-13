.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->$r8$lambda$phSB0v2Ny6EKM52bjkjmbuVIrY0(Ljava/util/concurrent/CompletableFuture;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    move-result-object p0

    return-object p0
.end method
