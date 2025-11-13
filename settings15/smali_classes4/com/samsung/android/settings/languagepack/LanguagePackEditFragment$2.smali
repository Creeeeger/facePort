.class public final Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x1fcd

    const/16 p2, 0x1fd0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mSelectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
