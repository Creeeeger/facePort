.class public final synthetic Lcom/android/settings/tts/TtsEnginePreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    sget-object p2, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p1, p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->setDefaultKey(Ljava/lang/String;)Z

    return-void
.end method
