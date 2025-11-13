.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePack$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "single"

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string/jumbo p0, "multi"

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "bixby"

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/manager/TtsInfo;->mTarget:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
