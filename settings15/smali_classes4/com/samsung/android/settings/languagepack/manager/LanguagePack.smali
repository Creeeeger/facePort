.class public Lcom/samsung/android/settings/languagepack/manager/LanguagePack;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mAsrPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ondevicePkgName"
    .end annotation
.end field

.field mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageDisplayName"
    .end annotation
.end field

.field mExtraTranslationPkgNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraTransPkgNames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIsStandardLanguageCode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "standardLang"
    .end annotation
.end field

.field mLanguageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageCode"
    .end annotation
.end field

.field mOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field mS2tPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s2tPkgName"
    .end annotation
.end field

.field mShowLanguageName:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showLanguageName"
    .end annotation
.end field

.field mShowLocale:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showLocale"
    .end annotation
.end field

.field mSupportS2T:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "supportS2T"
    .end annotation
.end field

.field mTranslationPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transPkgName"
    .end annotation
.end field

.field mTranslationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ondeviceTransType"
    .end annotation
.end field

.field mTtsPkgInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ttsPkgs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/languagepack/manager/TtsInfo;",
            ">;"
        }
    .end annotation
.end field
