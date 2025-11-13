.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->$r8$lambda$bKNyHMbzoepa90lkuraZgq7LrjA(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->$r8$lambda$Sezx9BbzOdJHrjfzecLGXwx9PTc(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/PackageInfo;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->$r8$lambda$ZBVhW0jcgLi4q9-RDMOE2Xq_Xc0(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
