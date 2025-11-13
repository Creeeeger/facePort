.class public Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;
.super Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mGroupType:I

.field private mIsGroupHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mIsGroupHeader:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mGroupType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mIsGroupHeader:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mGroupType:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->setDomainType(I)V

    return-void
.end method


# virtual methods
.method public final setGroupHeader()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mIsGroupHeader:Z

    return-void
.end method

.method public final setGroupType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;->mGroupType:I

    return-void
.end method
