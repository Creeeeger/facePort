.class Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;
.super Ljava/lang/Object;
.source "OfflinePackageChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomAppUpdateData"
.end annotation


# instance fields
.field private appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

.field private localeCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetappUpdateData(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocaleCode(Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->localeCode:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->localeCode:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->localeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$CustomAppUpdateData;->appUpdateData:Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
