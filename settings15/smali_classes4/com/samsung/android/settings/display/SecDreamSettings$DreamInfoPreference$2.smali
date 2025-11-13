.class public final Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const/16 p1, 0x2f

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x1d2d

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p1, Lcom/samsung/android/settings/display/SecDreamSettings;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to start settings "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDreamSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v2, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v4, "com.android.dreams.phototable/com.android.dreams.phototable.FlipperDream"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_4

    :cond_3
    const-string v6, "com.android.dreams.phototable/com.android.dreams.phototable.PhotoTableDream"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x3

    goto :goto_4

    :cond_4
    const-string v7, "com.google.android.apps.photos/com.google.android.apps.photos.daydream.PhotosDreamService"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x4

    goto :goto_4

    :cond_5
    iget-object v1, v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0xd

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v8, v11, :cond_b

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v10, v10, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :goto_2
    add-int/2addr v9, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/2addr v8, v0

    sub-int/2addr v8, v9

    mul-int/lit8 v0, v8, 0xb

    goto :goto_4

    :cond_a
    :goto_3
    add-int/2addr v8, v0

    goto :goto_1

    :cond_b
    move v0, v5

    :goto_4
    if-eq v0, v5, :cond_c

    int-to-long v0, v0

    const/16 v2, 0x10d0

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->performClick()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
