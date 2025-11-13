.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/manager/TtsInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/manager/TtsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    check-cast p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mVariants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mVariants:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mVariants:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
