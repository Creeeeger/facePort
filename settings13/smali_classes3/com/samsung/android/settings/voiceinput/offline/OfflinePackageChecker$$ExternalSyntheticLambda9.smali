.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda9;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda9;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->$r8$lambda$bRU03U45Bt2UxYJodf6dq0Oap-g(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)V

    return-void
.end method
