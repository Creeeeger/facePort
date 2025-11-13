.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    sget v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->updateStatus$1(Ljava/lang/String;)V

    return-void
.end method
