.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePack;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePack;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePack;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mEngine:Ljava/lang/String;

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_0

    goto :goto_2

    :cond_0
    if-le v4, v5, :cond_1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p0

    array-length p1, p1

    if-lt p0, p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method
