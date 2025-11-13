.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getTranslationPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
