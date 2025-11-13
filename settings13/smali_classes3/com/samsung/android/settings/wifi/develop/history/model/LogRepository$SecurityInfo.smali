.class public Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;
.super Ljava/lang/Object;
.source "LogRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityInfo"
.end annotation


# instance fields
.field akmSuite:Ljava/lang/String;

.field groupCipher:Ljava/lang/String;

.field pairwiseCipher:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 164
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->pairwiseCipher:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->groupCipher:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->akmSuite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAkmSuite()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->akmSuite:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupCipher()Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->groupCipher:Ljava/lang/String;

    return-object p0
.end method

.method public getPairwiseCipher()Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->pairwiseCipher:Ljava/lang/String;

    return-object p0
.end method
