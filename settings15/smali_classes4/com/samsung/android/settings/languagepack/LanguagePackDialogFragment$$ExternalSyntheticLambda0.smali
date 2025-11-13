.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_0
    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq p0, v0, :cond_1

    sget-object p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p0, p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :pswitch_1
    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p0, v1, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_2
    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p0, v0, :cond_4

    move v2, v3

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
