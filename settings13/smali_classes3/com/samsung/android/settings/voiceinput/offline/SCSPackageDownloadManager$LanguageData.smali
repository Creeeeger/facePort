.class Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;
.super Ljava/lang/Object;
.source "SCSPackageDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LanguageData"
.end annotation


# instance fields
.field language:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->version:Ljava/lang/String;

    return-void
.end method
