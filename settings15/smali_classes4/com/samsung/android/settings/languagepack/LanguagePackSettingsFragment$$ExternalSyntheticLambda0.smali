.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequestType:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->showItemOnListWithType(I)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mRequiredLangCodeList:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
