.class Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;
.super Ljava/lang/Object;
.source "RingtoneActionActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 13

    const-string v0, "_data"

    .line 51
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 52
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fputmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Landroid/net/Uri;)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "routines_ringtone_title"

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/media/Ringtone;->getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fputmTitle(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;

    move-result-object v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 61
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v6, :cond_0

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v3, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fputmAbsolutePath(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 59
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    :goto_1
    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveAbsolutePath "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RingtoneActionActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fputmAbsolutePath(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;Ljava/lang/String;)V

    .line 74
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmRingtoneUri(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "routines_ringtone_uri"

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmAbsolutePath(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "routines_ringtone_path"

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    goto :goto_3

    :cond_3
    const-string p1, "silent"

    .line 79
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 82
    :goto_3
    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 83
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->this$0:Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/action/ui/RingtoneActionActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
