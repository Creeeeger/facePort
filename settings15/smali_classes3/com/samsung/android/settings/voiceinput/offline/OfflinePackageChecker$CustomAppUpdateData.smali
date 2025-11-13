.class Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomAppUpdateData"
.end annotation


# instance fields
.field private appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

.field private langPackName:Ljava/lang/String;

.field private locale:Ljava/util/Locale;


# direct methods
.method public static bridge synthetic -$$Nest$fgetappUpdateData(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlangPackName(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->langPackName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlocale(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->langPackName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->locale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    return-void
.end method
