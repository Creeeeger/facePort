.class public final synthetic Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/apn/ApnEditor;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/apn/ApnEditor;

    iput-object p2, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/apn/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;->f$2:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t add a new apn to database "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnEditor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
