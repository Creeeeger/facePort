.class public final synthetic Lcom/android/settings/localepicker/LocaleListEditor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Locale$Builder;

.field public final synthetic f$1:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale$Builder;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$$ExternalSyntheticLambda0;->f$0:Ljava/util/Locale$Builder;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleListEditor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$$ExternalSyntheticLambda0;->f$0:Ljava/util/Locale$Builder;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/android/settings/localepicker/LocaleListEditor;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0, p1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    return-void
.end method
