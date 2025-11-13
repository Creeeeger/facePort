.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget p0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/16 p1, 0x10

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget p0, p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;->mType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
