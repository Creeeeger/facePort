.class public final synthetic Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Stack;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/Stack;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/PackageInfo;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    iput p0, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mDisplayOrder:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
