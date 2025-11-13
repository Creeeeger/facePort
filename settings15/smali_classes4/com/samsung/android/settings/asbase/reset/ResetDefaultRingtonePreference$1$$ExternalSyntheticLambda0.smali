.class public final synthetic Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference$1$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/asbase/reset/ResetDefaultRingtonePreference;->SYSTEM_SOUND_DB_LIST:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const-string v2, "/data/overlays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :pswitch_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
