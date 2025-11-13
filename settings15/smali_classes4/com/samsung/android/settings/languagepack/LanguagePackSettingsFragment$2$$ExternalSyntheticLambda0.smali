.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    sget v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updatePreference$12$1()V

    return-void
.end method
