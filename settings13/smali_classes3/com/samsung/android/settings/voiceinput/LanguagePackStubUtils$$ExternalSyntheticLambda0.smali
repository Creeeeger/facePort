.class public final synthetic Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->$r8$lambda$l4lMDUHndTXN5vBtUH8IiG4bQB4(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    move-result-object p0

    return-object p0
.end method
