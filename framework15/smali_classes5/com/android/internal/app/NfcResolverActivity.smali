.class public Lcom/android/internal/app/NfcResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "NfcResolverActivity.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-static {}, Landroid/nfc/Flags;->enableNfcMainline()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NfcResolverActivity;->super_onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-class v2, Landroid/content/pm/ResolveInfo;

    const-string v3, "android.nfc.extra.RESOLVE_INFOS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/NfcResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10402a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move-object v7, v9

    invoke-super/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method
