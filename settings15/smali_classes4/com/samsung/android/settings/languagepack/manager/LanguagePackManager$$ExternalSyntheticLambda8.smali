.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mPkgName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->$r8$lambda$M1oLogzArec6pfAFvQkeOJiW-rg(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->$r8$lambda$DzXnHny8MJoNnQYzR88feiog0-w(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
