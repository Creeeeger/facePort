.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Locale;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;->f$0:Ljava/util/Locale;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;->f$0:Ljava/util/Locale;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;->$r8$lambda$ce9yq89BYzYklVhKseNF4-PB-Nk(Ljava/util/Locale;Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;

    move-result-object p0

    return-object p0
.end method
