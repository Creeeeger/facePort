.class public final Lcom/samsung/android/settings/languagepack/data/DownloadInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContentSize:Ljava/lang/String;

.field public final mDeltaContentSize:Ljava/lang/String;

.field public final mDeltaDownloadURI:Ljava/lang/String;

.field public final mDownloadURI:Ljava/lang/String;

.field public final mInstalledBinaryHashValue:Ljava/lang/String;

.field public final mResultCode:Ljava/lang/String;

.field public final mResultMsg:Ljava/lang/String;

.field public final mSignature:Ljava/lang/String;

.field public final mUpdateBinaryHashValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mResultCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mResultMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDownloadURI:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mContentSize:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDeltaDownloadURI:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mDeltaContentSize:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mInstalledBinaryHashValue:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mUpdateBinaryHashValue:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/settings/languagepack/data/DownloadInfo;->mSignature:Ljava/lang/String;

    return-void
.end method
