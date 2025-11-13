.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    packed-switch v1, :pswitch_data_0

    sget v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mLanguagePackType:I

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->hasUninstallablePackage(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mBaseList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->checkDownloadedInSettings(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0

    :pswitch_1
    iget p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mLanguagePackType:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->showItemOnListWithType(I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
